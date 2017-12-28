function varargout = gui_calculator(varargin)
% GUI_CALCULATOR MATLAB code for gui_calculator.fig
%      GUI_CALCULATOR, by itself, creates a new GUI_CALCULATOR or raises the existing
%      singleton*.
%
%      H = GUI_CALCULATOR returns the handle to a new GUI_CALCULATOR or the handle to
%      the existing singleton*.
%
%      GUI_CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_CALCULATOR.M with the given input arguments.
%
%      GUI_CALCULATOR('Property','Value',...) creates a new GUI_CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_calculator

% Last Modified by GUIDE v2.5 17-Jul-2016 14:55:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_calculator_OutputFcn, ...
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



% --- Executes just before gui_calculator is made visible.
function gui_calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_calculator (see VARARGIN)

% Choose default command line output for gui_calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in ln.
function ln_Callback(hObject, eventdata, handles)
% hObject    handle to ln (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
a=str2double(str);
r=log(a);
t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in mod.
function mod_Callback(hObject, eventdata, handles)
% hObject    handle to mod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
a=str2double(str);
r=abs(a);
t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
% hObject    handle to pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'3.14');
set(handles.text,'string',str);


% --- Executes on button press in ctok.
function ctok_Callback(hObject, eventdata, handles)
% hObject    handle to ctok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
a=str2double(str);
r=a+273;
t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in modulo.
function modulo_Callback(hObject, eventdata, handles)
% hObject    handle to modulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'%');
set(handles.text,'string',str);


% --- Executes on button press in lft.
function lft_Callback(hObject, eventdata, handles)
% hObject    handle to lft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'(');
set(handles.text,'string',str);


% --- Executes on button press in rgt.
function rgt_Callback(hObject, eventdata, handles)
% hObject    handle to rgt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,')');
set(handles.text,'string',str);


% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'0');
set(handles.text,'string',str);


% --- Executes on button press in fact.
function fact_Callback(hObject, eventdata, handles)
% hObject    handle to fact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
a=str2double(str);
r=factorial(a);
t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in rev.
function rev_Callback(hObject, eventdata, handles)
% hObject    handle to rev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
a=str2double(str);
r=1/a;
t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'3');
set(handles.text,'string',str);


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'2');
set(handles.text,'string',str);


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'1');
set(handles.text,'string',str);


% --- Executes on button press in log.
function log_Callback(hObject, eventdata, handles)
% hObject    handle to log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
a=str2double(str);
r=log10(a);
t=num2str(r);
str=t;
set(handles.text,'string',str);

% --- Executes on button press in power.
function power_Callback(hObject, eventdata, handles)
% hObject    handle to power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'^');
set(handles.text,'string',str);


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'6');
set(handles.text,'string',str);


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'5');
set(handles.text,'string',str);


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'4');
set(handles.text,'string',str);


% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'/');
set(handles.text,'string',str);


% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'*');
set(handles.text,'string',str);


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str='';
set(handles.text,'string',str);



% --- Executes on button press in exp.
function exp_Callback(hObject, eventdata, handles)
% hObject    handle to exp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'2.71828182846');
set(handles.text,'string',str);


% --- Executes on button press in sqroot.
function sqroot_Callback(hObject, eventdata, handles)
% hObject    handle to sqroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
a=str2double(str);
r=sqrt(a);
t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in dot.
function dot_Callback(hObject, eventdata, handles)
% hObject    handle to dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'.');
set(handles.text,'string',str);


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
tog=get(handles.deg,'value');
a=str2double(str);
if tog==1
    r=sind(a);
else
r=sin(a);
end

t=num2str(r);
str=t;
set(handles.text,'string',str);

% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
tog=get(handles.deg,'value');
a=str2double(str);
if tog==1
    r=cosd(a);
else
r=cos(a);
end

t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
tog=get(handles.deg,'value');
a=str2double(str);
if tog==1
    r=tand(a);
else
r=tan(a);
end

t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in asin.
function asin_Callback(hObject, eventdata, handles)
% hObject    handle to asin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
tog=get(handles.deg,'value');
a=str2double(str);
if tog==1
    r=asind(a);
else
r=asin(a);
end

t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in acos.
function acos_Callback(hObject, eventdata, handles)
% hObject    handle to acos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
tog=get(handles.deg,'value');
a=str2double(str);
if tog==1
    r=acosd(a);
else
r=acos(a);
end

t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in atan.
function atan_Callback(hObject, eventdata, handles)
% hObject    handle to atan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
tog=get(handles.deg,'value');
a=str2double(str);
if tog==1
    r=atand(a);
else
r=atan(a);
end

t=num2str(r);
str=t;
set(handles.text,'string',str);


% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'9');
set(handles.text,'string',str);

% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'8');
set(handles.text,'string',str);

% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'7');
set(handles.text,'string',str);


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');

str=strcat(str,'+');
set(handles.text,'string',str);


% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
str=strcat(str,'-');
set(handles.text,'string',str);


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
str=eval(str);

set(handles.text,'string',str);
set(handles.ans,'value',str2num(str));



function text_Callback(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text as text
%        str2double(get(hObject,'String')) returns contents of text as a double


% --- Executes during object creation, after setting all properties.
function text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ans.
function ans_Callback(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.ans,'value');
str=num2str(str);

set(handles.text,'string',str);




% --- Executes on button press in deg.
function deg_Callback(hObject, eventdata, handles)
% hObject    handle to deg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of deg
