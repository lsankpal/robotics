function varargout = w_output_efg(varargin)
% W_OUTPUT_EFG MATLAB code for w_output_efg.fig
%      W_OUTPUT_EFG, by itself, creates a new W_OUTPUT_EFG or raises the existing
%      singleton*.
%
%      H = W_OUTPUT_EFG returns the handle to a new W_OUTPUT_EFG or the handle to
%      the existing singleton*.
%
%      W_OUTPUT_EFG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in W_OUTPUT_EFG.M with the given input arguments.
%
%      W_OUTPUT_EFG('Property','Value',...) creates a new W_OUTPUT_EFG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before w_output_efg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to w_output_efg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help w_output_efg

% Last Modified by GUIDE v2.5 03-Dec-2019 21:14:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @w_output_efg_OpeningFcn, ...
                   'gui_OutputFcn',  @w_output_efg_OutputFcn, ...
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


% --- Executes just before w_output_efg is made visible.
function w_output_efg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to w_output_efg (see VARARGIN)

% Choose default command line output for w_output_efg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global finalOutput;
textLabel = sprintf('%f \n',finalOutput );
set(handles.text2, 'String', textLabel);


% UIWAIT makes w_output_efg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = w_output_efg_OutputFcn(hObject, eventdata, handles) 
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
topics_gui


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
