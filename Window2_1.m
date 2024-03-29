function varargout = Window2_1(varargin)
% WINDOW2_1 MATLAB code for Window2_1.fig
%      WINDOW2_1, by itself, creates a new WINDOW2_1 or raises the existing
%      singleton*.
%
%      H = WINDOW2_1 returns the handle to a new WINDOW2_1 or the handle to
%      the existing singleton*.
%
%      WINDOW2_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WINDOW2_1.M with the given input arguments.
%
%      WINDOW2_1('Property','Value',...) creates a new WINDOW2_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Window2_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Window2_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Window2_1

% Last Modified by GUIDE v2.5 24-Nov-2019 11:50:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Window2_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Window2_1_OutputFcn, ...
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


% --- Executes just before Window2_1 is made visible.
function Window2_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Window2_1 (see VARARGIN)

% Choose default command line output for Window2_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Window2_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Window2_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for i=1:nl
    
mySelection = hObject.String(hObject.Value); 
if mySelection=="Prismatic"
    joint_type=0;
else
    joint_type=1;
end
joint_type
if joint_type==0
    
end
end

    
% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
c = dialog();
listbox1 = uicontrol('Parent',c,...
    'Style','listbox',...
    'Position',[90 90 100 100],...
    'Min', 0, ...
    'Max',3,...
    'String',{'Prismatic', 'Revolute'},...
    'Callback', @listbox1_Callback);
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tabledata=(get(handles.uitable1,'data'))
    Z=(tabledata)
  string(Z)
    for j=1:4
    Y(1,j)=Z(1,j)
    Y(1,j)=cell2string(Y(1,j))
    end
