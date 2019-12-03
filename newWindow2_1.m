function varargout = newWindow2_1(varargin)
% NEWWINDOW2_1 MATLAB code for newWindow2_1.fig
%      NEWWINDOW2_1, by itself, creates a new NEWWINDOW2_1 or raises the existing
%      singleton*.
%
%      H = NEWWINDOW2_1 returns the handle to a new NEWWINDOW2_1 or the handle to
%      the existing singleton*.
%
%      NEWWINDOW2_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWWINDOW2_1.M with the given input arguments.
%
%      NEWWINDOW2_1('Property','Value',...) creates a new NEWWINDOW2_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newWindow2_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newWindow2_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newWindow2_1

% Last Modified by GUIDE v2.5 02-Dec-2019 17:08:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newWindow2_1_OpeningFcn, ...
                   'gui_OutputFcn',  @newWindow2_1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before newWindow2_1 is made visible.
function newWindow2_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newWindow2_1 (see VARARGIN)

% Choose default command line output for newWindow2_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newWindow2_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newWindow2_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
nl=getappdata(window2,'nl');
%n_s=getappdata(0,'ns');
set(handles.uitable1,'Data',cell(nl,4));
set(handles.uitable2,'Data',cell(nl,2));
set(handles.uitable2, 'ColumnEditable', [true, true]);





% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global joint_type;
global Z_angle;
global link_length;
global ns
%global link_limits;
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Joint_parameters=(get(handles.uitable1,'data'))
joint_type=Joint_parameters(:,2)
joint_type=string(joint_type)
z_e = str2num(get(handles.edit1,'String'));
Z_angle=Joint_parameters(:,3)
Z_angle=[cell2mat(Z_angle);z_e]
Link_parameters=(get(handles.uitable2,'data'))
link_length=Link_parameters(:,2)
link_length=cell2mat(link_length)
%link_limits=Link_parameters(:,3)
%Link_limits=(cell2mat(link_limits))
setappdata(newWindow2_1,'joint_type',joint_type);
%setappdata(newWindow2_1,'link_limits',Link_limits);
 
T_d=calculate_dhparam(ns,Z_angle,link_length, joint_type)

topics_gui




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double



% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)

% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
