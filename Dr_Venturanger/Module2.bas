Attribute VB_Name = "Module2"
     Public Const MMSYSERR_NOERROR = 0
      Public Const MAXPNAMELEN = 32
      Public Const MIXER_LONG_NAME_CHARS = 64
      Public Const MIXER_SHORT_NAME_CHARS = 16
      Public Const MIXER_GETLINEINFOF_COMPONENTTYPE = &H3&
      Public Const MIXER_GETCONTROLDETAILSF_VALUE = &H0&
      Public Const MIXER_GETLINECONTROLSF_ONEBYTYPE = &H2&
      Public Const MIXERLINE_COMPONENTTYPE_DST_FIRST = &H0&
      Public Const MIXERLINE_COMPONENTTYPE_SRC_FIRST = &H1000&
      
      Public Const MIXERLINE_COMPONENTTYPE_DST_SPEAKERS = _
                     (MIXERLINE_COMPONENTTYPE_DST_FIRST + 4)
                     
      Public Const MIXERLINE_COMPONENTTYPE_SRC_MICROPHONE = _
                     (MIXERLINE_COMPONENTTYPE_SRC_FIRST + 3)
      
      Public Const MIXERLINE_COMPONENTTYPE_SRC_LINE = _
                     (MIXERLINE_COMPONENTTYPE_SRC_FIRST + 2)
      
      Public Const MIXERCONTROL_CT_CLASS_FADER = &H50000000
      Public Const MIXERCONTROL_CT_UNITS_UNSIGNED = &H30000
      
      Public Const MIXERCONTROL_CONTROLTYPE_FADER = _
                     (MIXERCONTROL_CT_CLASS_FADER Or _
                     MIXERCONTROL_CT_UNITS_UNSIGNED)
                     
      Global Const IDI_AppIcon = 32512&
      
      Public Const MIXERCONTROL_CONTROLTYPE_VOLUME = _
                     (MIXERCONTROL_CONTROLTYPE_FADER + 1)
      
      Declare Function mixerClose Lib "winmm.dll" _
                     (ByVal hmx As Long) As Long
         
      Declare Function mixerGetControlDetails Lib "winmm.dll" _
                     Alias "mixerGetControlDetailsA" _
                     (ByVal hmxobj As Long, _
                     pmxcd As MIXERCONTROLDETAILS, _
                     ByVal fdwDetails As Long) As Long
         
      Declare Function mixerGetDevCaps Lib "winmm.dll" _
                     Alias "mixerGetDevCapsA" _
                     (ByVal uMxId As Long, _
                     ByVal pmxcaps As MIXERCAPS, _
                     ByVal cbmxcaps As Long) As Long
         
      Declare Function mixerGetID Lib "winmm.dll" _
                     (ByVal hmxobj As Long, _
                     pumxID As Long, _
                     ByVal fdwId As Long) As Long
                     
      Declare Function mixerGetLineControls Lib "winmm.dll" _
                     Alias "mixerGetLineControlsA" _
                     (ByVal hmxobj As Long, _
                     pmxlc As MIXERLINECONTROLS, _
                     ByVal fdwControls As Long) As Long
                     
      Declare Function mixerGetLineInfo Lib "winmm.dll" _
                     Alias "mixerGetLineInfoA" _
                     (ByVal hmxobj As Long, _
                     pmxl As MIXERLINE, _
                     ByVal fdwInfo As Long) As Long
                     
      Declare Function mixerGetNumDevs Lib "winmm.dll" () As Long
      
      Declare Function mixerMessage Lib "winmm.dll" _
                     (ByVal hmx As Long, _
                     ByVal uMsg As Long, _
                     ByVal dwParam1 As Long, _
                     ByVal dwParam2 As Long) As Long
                     
      Declare Function mixerOpen Lib "winmm.dll" _
                     (phmx As Long, _
                     ByVal uMxId As Long, _
                     ByVal dwCallback As Long, _
                     ByVal dwInstance As Long, _
                     ByVal fdwOpen As Long) As Long
                     
      Declare Function mixerSetControlDetails Lib "winmm.dll" _
                     (ByVal hmxobj As Long, _
                     pmxcd As MIXERCONTROLDETAILS, _
                     ByVal fdwDetails As Long) As Long
                     
      Declare Sub CopyStructFromPtr Lib "kernel32" _
                     Alias "RtlMoveMemory" _
                     (struct As Any, _
                     ByVal ptr As Long, ByVal cb As Long)
                     
      Declare Sub CopyPtrFromStruct Lib "kernel32" _
                     Alias "RtlMoveMemory" _
                     (ByVal ptr As Long, _
                     struct As Any, _
                     ByVal cb As Long)
                     
      Declare Function GlobalAlloc Lib "kernel32" _
                     (ByVal wFlags As Long, _
                     ByVal dwBytes As Long) As Long
                     
      Declare Function GlobalLock Lib "kernel32" _
                     (ByVal hmem As Long) As Long
                     
      Declare Function GlobalFree Lib "kernel32" _
                     (ByVal hmem As Long) As Long
      
      Declare Function GetWindowsDirectory Lib "kernel32" _
      Alias "GetWindowsDirectoryA" _
      (ByVal lpBuffer As String, ByVal nSize As Long) As Long

      

      
      Type MIXERCAPS
         wMid As Integer                   '  manufacturer id
         wPid As Integer                   '  product id
         vDriverVersion As Long            '  version of the driver
         szPname As String * MAXPNAMELEN   '  product name
         fdwSupport As Long                '  misc. support bits
         cDestinations As Long             '  count of destinations
      End Type
      
      Type MIXERCONTROL
         cbStruct As Long           '  size in Byte of MIXERCONTROL
         dwControlID As Long        '  unique control id for mixer device
         dwControlType As Long      '  MIXERCONTROL_CONTROLTYPE_xxx
         fdwControl As Long         '  MIXERCONTROL_CONTROLF_xxx
         cMultipleItems As Long     '  if MIXERCONTROL_CONTROLF_MULTIPLE set
         szShortName As String * MIXER_SHORT_NAME_CHARS  ' short name of control
         szName As String * MIXER_LONG_NAME_CHARS        ' long name of control
         lMinimum As Long           '  Minimum value
         lMaximum As Long           '  Maximum value
         reserved(10) As Long       '  reserved structure space
         End Type
      
      Type MIXERCONTROLDETAILS
         cbStruct As Long       '  size in Byte of MIXERCONTROLDETAILS
         dwControlID As Long    '  control id to get/set details on
         cChannels As Long      '  number of channels in paDetails array
         item As Long           '  hwndOwner or cMultipleItems
         cbDetails As Long      '  size of _one_ details_XX struct
         paDetails As Long      '  pointer to array of details_XX structs
      End Type
      
      Type MIXERCONTROLDETAILS_UNSIGNED
         dwValue As Long        '  value of the control
      End Type
      
      Type MIXERLINE
         cbStruct As Long               '  size of MIXERLINE structure
         dwDestination As Long          '  zero based destination index
         dwSource As Long               '  zero based source index (if source)
         dwLineID As Long               '  unique line id for mixer device
         fdwLine As Long                '  state/information about line
         dwUser As Long                 '  driver specific information
         dwComponentType As Long        '  component type line connects to
         cChannels As Long              '  number of channels line supports
         cConnections As Long           '  number of connections (possible)
         cControls As Long              '  number of controls at this line
         szShortName As String * MIXER_SHORT_NAME_CHARS
         szName As String * MIXER_LONG_NAME_CHARS
         dwType As Long
         dwDeviceID As Long
         wMid  As Integer
         wPid As Integer
         vDriverVersion As Long
         szPname As String * MAXPNAMELEN
      End Type
      
      Type MIXERLINECONTROLS
         cbStruct As Long       '  size in Byte of MIXERLINECONTROLS
         dwLineID As Long       '  line id (from MIXERLINE.dwLineID)
                                '  MIXER_GETLINECONTROLSF_ONEBYID or
         dwControl As Long      '  MIXER_GETLINECONTROLSF_ONEBYTYPE
         cControls As Long      '  count of controls pmxctrl points to
         cbmxctrl As Long       '  size in Byte of _one_ MIXERCONTROL
         pamxctrl As Long       '  pointer to first MIXERCONTROL array
      End Type
      Global vol As Long
      Global InitStart As Boolean
      Global iscommand As Boolean
      Global hmixer As Long          ' mixer handle
      Global volCtrl As MIXERCONTROL ' waveout volume control
      Global micCtrl As MIXERCONTROL ' microphone volume control
      Global rc As Long              ' return code
      Global ok As Boolean           ' boolean return code
      Global songlist(500) As String
      Global CurrentSong As Integer

      
      
      Function GetVolumeControl(ByVal hmixer As Long, _
                              ByVal componentType As Long, _
                              ByVal ctrlType As Long, _
                              ByRef mxc As MIXERCONTROL) As Boolean
                              
      ' This function attempts to obtain a mixer control. Returns True if successful.
         Dim mxlc As MIXERLINECONTROLS
         Dim mxl As MIXERLINE
         Dim hmem As Long
         Dim rc As Long
             
         mxl.cbStruct = Len(mxl)
         mxl.dwComponentType = componentType
      
         ' Obtain a line corresponding to the component type
         rc = mixerGetLineInfo(hmixer, mxl, MIXER_GETLINEINFOF_COMPONENTTYPE)
         
         If (MMSYSERR_NOERROR = rc) Then
             mxlc.cbStruct = Len(mxlc)
             mxlc.dwLineID = mxl.dwLineID
             mxlc.dwControl = ctrlType
             mxlc.cControls = 1
             mxlc.cbmxctrl = Len(mxc)
             
             ' Allocate a buffer for the control
             hmem = GlobalAlloc(&H40, Len(mxc))
             mxlc.pamxctrl = GlobalLock(hmem)
             mxc.cbStruct = Len(mxc)
             
             ' Get the control
             rc = mixerGetLineControls(hmixer, _
                                       mxlc, _
                                       MIXER_GETLINECONTROLSF_ONEBYTYPE)
                  
             If (MMSYSERR_NOERROR = rc) Then
                 GetVolumeControl = True
                 
                 ' Copy the control into the destination structure
                 CopyStructFromPtr mxc, mxlc.pamxctrl, Len(mxc)
             Else
                 GetVolumeControl = False
             End If
             GlobalFree (hmem)
             Exit Function
         End If
      
         GetVolumeControl = False
      End Function
      
      Function SetVolumeControl(ByVal hmixer As Long, _
                              mxc As MIXERCONTROL, _
                              ByVal volume As Long) As Boolean
      'This function sets the value for a volume control. Returns True if successful
                              
         Dim mxcd As MIXERCONTROLDETAILS
         Dim xvol As MIXERCONTROLDETAILS_UNSIGNED
      
         mxcd.item = 0
         mxcd.dwControlID = mxc.dwControlID
         mxcd.cbStruct = Len(mxcd)
         mxcd.cbDetails = Len(xvol)
         
         ' Allocate a buffer for the control value buffer
         hmem = GlobalAlloc(&H40, Len(xvol))
         mxcd.paDetails = GlobalLock(hmem)
         mxcd.cChannels = 1
         xvol.dwValue = volume
         
         ' Copy the data into the control value buffer
         CopyPtrFromStruct mxcd.paDetails, xvol, Len(vol)
         
         ' Set the control value
         rc = mixerSetControlDetails(hmixer, _
                                    mxcd, _
                                    MIXER_SETCONTROLDETAILSF_VALUE)
         
         GlobalFree (hmem)
         If (MMSYSERR_NOERROR = rc) Then
             SetVolumeControl = True
         Else
             SetVolumeControl = False
         End If
      End Function




