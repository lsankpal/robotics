function varargout = topics_gui(varargin)
% TOPICS_GUI MATLAB code for topics_gui.fig
%      TOPICS_GUI, by itself, creates a new TOPICS_GUI or raises the existing
%      singleton*.
%
%      H = TOPICS_GUI returns the handle to a new TOPICS_GUI or the handle to
%      the existing singleton*.
%
%      TOPICS_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TOPICS_GUI.M with the given input arguments.
%
%      TOPICS_GUI('Property','Value',...) creates a new TOPICS_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before topics_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to topics_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help topics_gui

% Last Modified by GUIDE v2.5 30-Nov-2019 13:20:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @topics_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @topics_gui_OutputFcn, ...
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


% --- Executes just before topics_gui is made visible.
function topics_gui_OpeningFcn(hObject, eventdata, handles, varargin)
global joint_type;
global Z_angle;
global link_length;
global Td;
global ns;
global nl;
     
    % This function has no output args, see OutputFcn.
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    % varargin   command line arguments to topics_gui (see VARARGIN)

% Choose default command line output for topics_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes topics_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = topics_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Td;
global ns;
global Tr
theta=Td(:,1);
d=Td(:,2);
alpha=Td(:,3);
a=Td(:,4);
Tr=transformation_matrix(ns,theta,alpha,d,a);
w_output1_1

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global Td
global ns;
global Tr;
global eulZYX;
theta=Td(:,1);
d=Td(:,2);
alpha=Td(:,3);
a=Td(:,4);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[eulZYX, Tr] =euler_angles(ns, theta, alpha, d, a)
w_output_euler



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global Td
global ns
global T_F;
theta=Td(:,1);
d=Td(:,2);
alpha=Td(:,3);
a=Td(:,4);
[T_F]=forwardkine(theta,d,alpha,a)


% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
workspace_limits
global Td
global ns
global T_F;
global ML;
global ml;
global lim;
lim=[ML ml];
global R;
theta=Td(:,1);
d=Td(:,2);
alpha=Td(:,3);
a=Td(:,4);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
workspace(R,lim)



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
global Td;
global ns;
global finalOutput;
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
theta=Td(:,1);
d=Td(:,2);
alpha=Td(:,3);
a=Td(:,4);
t_matrix=tmatrix_for_inv(ns,theta,alpha,d,a);
joint_params = calculate_inv_kinematics(Td,ns,t_matrix)
finalOutput = joint_params;
w_output_efg

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
W_differential_kinematics

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
w_inv_differential_kinematics

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

w_inverse_jacobian_kinematics

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
