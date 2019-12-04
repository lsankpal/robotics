function varargout = w_inv_differential_kinematics(varargin)
% W_INV_DIFFERENTIAL_KINEMATICS MATLAB code for w_inv_differential_kinematics.fig
%      W_INV_DIFFERENTIAL_KINEMATICS, by itself, creates a new W_INV_DIFFERENTIAL_KINEMATICS or raises the existing
%      singleton*.
%
%      H = W_INV_DIFFERENTIAL_KINEMATICS returns the handle to a new W_INV_DIFFERENTIAL_KINEMATICS or the handle to
%      the existing singleton*.
%
%      W_INV_DIFFERENTIAL_KINEMATICS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in W_INV_DIFFERENTIAL_KINEMATICS.M with the given input arguments.
%
%      W_INV_DIFFERENTIAL_KINEMATICS('Property','Value',...) creates a new W_INV_DIFFERENTIAL_KINEMATICS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before w_inv_differential_kinematics_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to w_inv_differential_kinematics_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help w_inv_differential_kinematics

% Last Modified by GUIDE v2.5 03-Dec-2019 20:40:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @w_inv_differential_kinematics_OpeningFcn, ...
                   'gui_OutputFcn',  @w_inv_differential_kinematics_OutputFcn, ...
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


% --- Executes just before w_inv_differential_kinematics is made visible.
function w_inv_differential_kinematics_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to w_inv_differential_kinematics (see VARARGIN)

% Choose default command line output for w_inv_differential_kinematics
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes w_inv_differential_kinematics wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = w_inv_differential_kinematics_OutputFcn(hObject, eventdata, handles) 
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
global finalOutput;
%global link_limits;
%global joint_type;
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tabledata=(get(handles.uitable1,'data'));
tabledata1=(get(handles.uitable2,'data'));

q0=cell2mat(tabledata(1:3,1))
qd=cell2mat(tabledata(1:3,2))
link_limits=str2double(tabledata1(:,2))
joint_type=string(tabledata1(:,1))

[qcomp,tcomp]=calculate_inverse_differential_kinematics(Td,q0',qd',ns,joint_type,link_limits);
finalOutput = qcomp;
w_output_efg
qcomp
tcomp
