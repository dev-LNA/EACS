<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="csv" Type="Folder" URL="../csv">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="python" Type="Folder" URL="../python">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="utils" Type="Folder" URL="../utils">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LabVIEW" Type="Folder">
			<Item Name="ECP" Type="Folder">
				<Item Name="General VIs" Type="Folder" URL="../LabVIEW/ECP/General VIs">
					<Property Name="NI.DISK" Type="Bool">true</Property>
				</Item>
				<Item Name="CM_Log File.lvclass" Type="LVClass" URL="../LabVIEW/ECP/Log File/CM_Log File.lvclass"/>
				<Item Name="CM_RxTx.lvclass" Type="LVClass" URL="../LabVIEW/ECP/RxTx/CM_RxTx.lvclass"/>
				<Item Name="Socket.lvclass" Type="LVClass" URL="../LabVIEW/ECP/Socket/Socket.lvclass"/>
				<Item Name="socket PUB.lvclass" Type="LVClass" URL="../LabVIEW/ECP/socket PUB/socket PUB.lvclass"/>
				<Item Name="socket REP.lvclass" Type="LVClass" URL="../LabVIEW/ECP/socket REP/socket REP.lvclass"/>
				<Item Name="socket REQ.lvclass" Type="LVClass" URL="../LabVIEW/ECP/socket REQ/socket REQ.lvclass"/>
				<Item Name="socket SUB.lvclass" Type="LVClass" URL="../LabVIEW/ECP/socket SUB/socket SUB.lvclass"/>
				<Item Name="CM_State Machine.lvclass" Type="LVClass" URL="../LabVIEW/ECP/State Machine/CM_State Machine.lvclass"/>
			</Item>
			<Item Name="ECHARPE" Type="Folder">
				<Item Name="Channel ECHARPE.lvclass" Type="LVClass" URL="../LabVIEW/Channel ECHARPE/Channel ECHARPE.lvclass"/>
				<Item Name="Camera Simulated iKon.lvclass" Type="LVClass" URL="../LabVIEW/Camera Simulated iKon/Camera Simulated iKon.lvclass"/>
				<Item Name="Camera iKon L.lvclass" Type="LVClass" URL="../LabVIEW/Camera iKon L/Camera iKon L.lvclass"/>
				<Item Name="Save Image ECHARPE.lvclass" Type="LVClass" URL="../LabVIEW/Save Image ECHARPE/Save Image ECHARPE.lvclass"/>
			</Item>
			<Item Name="ABS" Type="Folder">
				<Item Name="Save Image.lvclass" Type="LVClass" URL="../LabVIEW/Save Image/Save Image.lvclass"/>
				<Item Name="Channel.lvclass" Type="LVClass" URL="../LabVIEW/Channel/Channel.lvclass"/>
				<Item Name="Camera Simulated.lvclass" Type="LVClass" URL="../LabVIEW/Camera Simulated/Camera Simulated.lvclass"/>
			</Item>
			<Item Name="data types" Type="Folder">
				<Item Name="GUI Resquest.lvclass" Type="LVClass" URL="../LabVIEW/gui request/GUI Resquest.lvclass"/>
				<Item Name="ECHARPE Request.lvclass" Type="LVClass" URL="../LabVIEW/ECHARPE Request/ECHARPE Request.lvclass"/>
				<Item Name="Initial Configuration.lvclass" Type="LVClass" URL="../LabVIEW/Initial Configuration/Initial Configuration.lvclass"/>
				<Item Name="Camera Operation Mode.lvclass" Type="LVClass" URL="../LabVIEW/Camera Operation Mode/Camera Operation Mode.lvclass"/>
				<Item Name="ECHARPE Cam OpMode.lvclass" Type="LVClass" URL="../LabVIEW/ECHARPE Cam OpMode/ECHARPE Cam OpMode.lvclass"/>
				<Item Name="Camera Acquisition Configuration.lvclass" Type="LVClass" URL="../LabVIEW/Camera Acquisition Configuration/Camera Acquisition Configuration.lvclass"/>
				<Item Name="Channel Configuration.lvclass" Type="LVClass" URL="../LabVIEW/Channel Configuration/Channel Configuration.lvclass"/>
			</Item>
			<Item Name="zeromq" Type="Folder">
				<Item Name="zeromq.lvlib" Type="Library" URL="../LabVIEW/zeromq/zeromq.lvlib"/>
				<Item Name="libsodium.dll" Type="Document" URL="../LabVIEW/zeromq/libsodium.dll"/>
				<Item Name="libzmq-v120-mt-4_3_2.dll" Type="Document" URL="../LabVIEW/zeromq/libzmq-v120-mt-4_3_2.dll"/>
				<Item Name="libzmq-v120-mt-4_3_2.lib" Type="Document" URL="../LabVIEW/zeromq/libzmq-v120-mt-4_3_2.lib"/>
				<Item Name="lvzmq64.dll" Type="Document" URL="../LabVIEW/zeromq/lvzmq64.dll"/>
				<Item Name="lvzmq64.exp" Type="Document" URL="../LabVIEW/zeromq/lvzmq64.exp"/>
				<Item Name="lvzmq64.lib" Type="Document" URL="../LabVIEW/zeromq/lvzmq64.lib"/>
				<Item Name="msvcp120.dll" Type="Document" URL="../LabVIEW/zeromq/msvcp120.dll"/>
				<Item Name="msvcr120.dll" Type="Document" URL="../LabVIEW/zeromq/msvcr120.dll"/>
				<Item Name="Packed Library Path.vi" Type="VI" URL="../LabVIEW/zeromq/Packed Library Path.vi"/>
				<Item Name="zmq.h" Type="Document" URL="../LabVIEW/zeromq/zmq.h"/>
			</Item>
			<Item Name="Log File.lvclass" Type="LVClass" URL="../LabVIEW/Log File/Log File.lvclass"/>
			<Item Name="Python Toolkit.lvclass" Type="LVClass" URL="../LabVIEW/Python Toolkit/Python Toolkit.lvclass"/>
			<Item Name="RxTx.lvclass" Type="LVClass" URL="../LabVIEW/RxTx/RxTx.lvclass"/>
			<Item Name="Server.lvclass" Type="LVClass" URL="../LabVIEW/Server/Server.lvclass"/>
			<Item Name="State Machine.lvclass" Type="LVClass" URL="../LabVIEW/State Machine/State Machine.lvclass"/>
		</Item>
		<Item Name="EACS.vi" Type="VI" URL="../EACS.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="zeromq.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/zeromq/zeromq.lvlib"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="SetHighCapacity.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetHighCapacity.vi"/>
				<Item Name="Error Code Handler.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Error Code Handler.vi"/>
				<Item Name="Error Code Enum typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Error Code Enum typedef.ctl"/>
				<Item Name="Add ECO For DLL.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Add ECO For DLL.vi"/>
				<Item Name="Error Code Offset global.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Error Code Offset global.vi"/>
				<Item Name="Get Error Source.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Get Error Source.vi"/>
				<Item Name="Join Strings.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Join Strings.vi"/>
				<Item Name="Subtract ECO For DLL.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Subtract ECO For DLL.vi"/>
				<Item Name="Add ECO For LabVIEW.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/Add ECO For LabVIEW.vi"/>
				<Item Name="CoolerOFF.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/CoolerOFF.vi"/>
				<Item Name="CoolerON.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/CoolerON.vi"/>
				<Item Name="SetTemperature.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetTemperature.vi"/>
				<Item Name="SetImage.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetImage.vi"/>
				<Item Name="SetTriggerMode.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetTriggerMode.vi"/>
				<Item Name="TriggerMode_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/TriggerMode_mode typedef.ctl"/>
				<Item Name="SetShutter.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetShutter.vi"/>
				<Item Name="Shutter_type typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Shutter_type typedef.ctl"/>
				<Item Name="Shutter_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Shutter_mode typedef.ctl"/>
				<Item Name="SetADChannel.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetADChannel.vi"/>
				<Item Name="SetAcquisitionMode.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetAcquisitionMode.vi"/>
				<Item Name="AcquisitionMode_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/AcquisitionMode_mode typedef.ctl"/>
				<Item Name="SetVSAmplitude.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetVSAmplitude.vi"/>
				<Item Name="SetReadMode.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetReadMode.vi"/>
				<Item Name="ReadMode_mode typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/ReadMode_mode typedef.ctl"/>
				<Item Name="SetVSSpeed.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetVSSpeed.vi"/>
				<Item Name="SetHorizontalSpeed.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetHorizontalSpeed.vi"/>
				<Item Name="SetPreAmpGain.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetPreAmpGain.vi"/>
				<Item Name="SetExposureTime.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetExposureTime.vi"/>
				<Item Name="SetNumberKinetics.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetNumberKinetics.vi"/>
				<Item Name="ShutDown.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/ShutDown.vi"/>
				<Item Name="Initialize.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/Initialize.vi"/>
				<Item Name="AbortAcquisition.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/AbortAcquisition.vi"/>
				<Item Name="GetImages16.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetImages16.vi"/>
				<Item Name="GetTemperature.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetTemperature.vi"/>
				<Item Name="U32 To Error Code Enum.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/U32 To Error Code Enum.vi"/>
				<Item Name="GetAvailableCameras.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetAvailableCameras.vi"/>
				<Item Name="GetCameraHandle.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetCameraHandle.vi"/>
				<Item Name="SetCurrentCamera.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/SetCurrentCamera.vi"/>
				<Item Name="GetCapabilities.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetCapabilities.vi"/>
				<Item Name="AndorCapabilities typedef.ctl" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/AndorCapabilities typedef.ctl"/>
				<Item Name="U32 Array To AndorCapabilities.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d_internal.llb/U32 Array To AndorCapabilities.vi"/>
				<Item Name="StartAcquisition.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/StartAcquisition.vi"/>
				<Item Name="GetStatus.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetStatus.vi"/>
				<Item Name="GetNumberNewImages.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetNumberNewImages.vi"/>
				<Item Name="GetCameraSerialNumber.vi" Type="VI" URL="/&lt;userlib&gt;/atmcd64d.llb/GetCameraSerialNumber.vi"/>
			</Item>
			<Item Name="find row in array.vi" Type="VI" URL="../LabVIEW/utils/find row in array.vi"/>
			<Item Name="verify parameter in range.vi" Type="VI" URL="../LabVIEW/utils/verify parameter in range.vi"/>
			<Item Name="read csv file.vi" Type="VI" URL="../LabVIEW/utils/read csv file.vi"/>
			<Item Name="get parameter min and max.vi" Type="VI" URL="../LabVIEW/utils/get parameter min and max.vi"/>
			<Item Name="find idx smaller than.vi" Type="VI" URL="../LabVIEW/utils/find idx smaller than.vi"/>
			<Item Name="atmcd64d.dll" Type="Document" URL="atmcd64d.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="night time stamp.vi" Type="VI" URL="../LabVIEW/utils/night time stamp.vi"/>
			<Item Name="split string.vi" Type="VI" URL="../LabVIEW/utils/split string.vi"/>
			<Item Name="choose firs acquisition state.vi" Type="VI" URL="../LabVIEW/Channel ECHARPE/choose firs acquisition state.vi"/>
			<Item Name="join array jsons.vi" Type="VI" URL="../LabVIEW/utils/join array jsons.vi"/>
			<Item Name="Application Directory.vi" Type="VI" URL="../LabVIEW/S4ACS.exe/1abvi3w/vi.lib/Utility/file.llb/Application Directory.vi"/>
			<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="../LabVIEW/S4ACS.exe/1abvi3w/vi.lib/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
			<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="../LabVIEW/S4ACS.exe/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
