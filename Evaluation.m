function varargout = Evaluation(varargin)
% EVALUATION MATLAB code for Evaluation.fig
%      EVALUATION, by itself, creates a new EVALUATION or raises the existing
%      singleton*.
%
%      H = EVALUATION returns the handle to a new EVALUATION or the handle to
%      the existing singleton*.
%
%      EVALUATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EVALUATION.M with the given input arguments.
%
%      EVALUATION('Property','Value',...) creates a new EVALUATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Evaluation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Evaluation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Evaluation

% Last Modified by GUIDE v2.5 27-Apr-2021 14:12:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Evaluation_OpeningFcn, ...
                   'gui_OutputFcn',  @Evaluation_OutputFcn, ...
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


% --- Executes just before Evaluation is made visible.
function Evaluation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Evaluation (see VARARGIN)

% Choose default command line output for Evaluation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Evaluation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Evaluation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function BaseData_Callback(hObject, eventdata, handles)
% hObject    handle to BaseData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function WeightDefine_Callback(hObject, eventdata, handles)
% hObject    handle to WeightDefine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Com_Eva_Callback(hObject, eventdata, handles)
% hObject    handle to Com_Eva (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Result_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to Result_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function TOPSIS_Callback(hObject, eventdata, handles)
% hObject    handle to TOPSIS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipl,'Visible','on');
set(handles.topsis_cl,'value',1,'Enable','on');
set(handles.gra_cl,'Enable','off');
set(handles.tg_cl,'Enable','off');
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uitb1,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl2,'visible','off');


        



% --------------------------------------------------------------------
function GRA_Callback(hObject, eventdata, handles)
% hObject    handle to GRA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipl,'Visible','on');
set(handles.gra_cl,'Enable','on','Value',1);
set(handles.topsis_cl,'Enable','off');
set(handles.tg_cl,'Enable','off');
set(handles.tg_cl,'Enable','off');
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uitb1,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl2,'visible','off');

% --------------------------------------------------------------------
function TOP_GRA_Callback(hObject, eventdata, handles)
% hObject    handle to TOP_GRA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipl,'Visible','on');
set(handles.tg_cl,'Enable','on','Value',1)
set(handles.gra_cl,'Enable','off');
set(handles.topsis_cl,'Enable','off');
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uitb1,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl2,'visible','off');

% --------------------------------------------------------------------
function AHP_Callback(hObject, eventdata, handles)
% hObject    handle to AHP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isfield(handles,'weight_data')
    msgbox('�������жϾ���')
else
    try
        ahpweight_value=AHP(handles.weight_data);% �ɲ�η������ó���Ȩ��Ϊ������
        ahpweight_value=ahpweight_value';% ����η������ó���Ȩ��תΪ������
        Ahp_display(handles,ahpweight_value);      
    catch
       msgbox('�����������жϾ���'); 
    end
end


% --------------------------------------------------------------------
function MeanSquare_Callback(hObject, eventdata, handles)
% hObject    handle to MeanSquare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isfield(handles,'index_data')
    msgbox('�������ʼ���߾���')
elseif isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
    try
        rs=inputdlg('������0��1ѡ�������ٻ���ʽ��');
        switch rs{1}
            case '0'
                stdweight_value=stdw(handles.ndimrst_0);
                MeanSquare_display(handles,stdweight_value);
            case '1'
                stdweight_value=stdw(handles.ndimrst_1);
                MeanSquare_display(handles,stdweight_value);
        end
    catch
        %-------------------------------------------------------
    end
elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
    stdweight_value=stdw(handles.ndimrst_0);
    MeanSquare_display(handles,stdweight_value);
elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
    stdweight_value=stdw(handles.ndimrst_1);
    MeanSquare_display(handles,stdweight_value);
elseif isfield(handles,'classify_data')
    rs=inputdlg('������0��1ѡ�������ٻ���ʽ��');
    rs=rs{1};
    switch rs
        case '0'    
            ndimrst_0=ndim(handles.index_data,handles.classify_data);
            handles.ndimrst_0=ndimrst_0;
            stdweight_value=stdw(handles.ndimrst_0);
            guidata(hObject,handles);
            MeanSquare_display(handles,stdweight_value);         
        case '1'    
            ndimrst_1=ndim1(handles.index_data,handles.classify_data);
            handles.ndimrst_1=ndimrst_1;
            stdweight_value=stdw(handles.ndimrst_1);
            guidata(hObject,handles);
            MeanSquare_display(handles,stdweight_value);
    end
else
    msgbox('������ָ�������������飡');
end



% --------------------------------------------------------------------
function CombineSet_Callback(hObject, eventdata, handles)
% hObject    handle to CombineSet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles,'index_data')&&isfield(handles,'weight_data')
    n1=size(handles.weight_data,2);
    n2=size(handles.index_data,2);
    if n1==n2 
        try
            ahpweight_value=AHP(handles.weight_data);%ahpweight_value Ϊ������
            rs=inputdlg('������0��1ѡ�������ٻ���ʽ��');
            rs=rs{1};
            switch rs
                case '0'
                    if isfield(handles,'ndimrst_0')
                        stdweight_value=stdw(handles.ndimrst_0);
                        a=0.5; %������Ϊ����Ի������ʽ����Ȩ��ϵ��
                        comweight_value=a*stdweight_value+(1-a)*ahpweight_value';
                        CombineSet_display(handles,comweight_value);
                    elseif isfield(handles,'classify_data')
                        ndimrst_0=ndim(handles.index_data,handles.classify_data);
                        handles.ndimrst_0=ndimrst_0;
                        stdweight_value=stdw(handles.ndimrst_0);
                        guidata(hObject,handles);
                        a=0.5; %������Ϊ����Ի������ʽ����Ȩ��ϵ��
                        comweight_value=a*stdweight_value+(1-a)*ahpweight_value';
                        CombineSet_display(handles,comweight_value);
                    else
                        msgbox('������ָ�������������飡');
                    end
                case '1'
                    if isfield(handles,'ndimrst_1')
                        stdweight_value=stdw(handles.ndimrst_1);
                        a=0.5; %������Ϊ����Ի������ʽ����Ȩ��ϵ��
                        comweight_value=a*stdweight_value+(1-a)*ahpweight_value';
                        CombineSet_display(handles,comweight_value);
                    elseif isfield(handles,'classify_data')
                        ndimrst_1=ndim(handles.index_data,handles.classify_data);
                        handles.ndimrst_1=ndimrst_1;
                        stdweight_value=stdw(handles.ndimrst_1);
                        guidata(hObject,handles);
                        a=0.5; %������Ϊ����Ի������ʽ����Ȩ��ϵ��
                        comweight_value=a*stdweight_value+(1-a)*ahpweight_value';
                        CombineSet_display(handles,comweight_value);
                    else
                        msgbox('������ָ�������������飡');
                    end
            end
        catch
            msgbox('�����������жϾ���')
        end     
    else
        msgbox('�жϾ����������ʼ���߾���������ͬ��');
    end
elseif ~isfield(handles,'index_data')&&isfield(handles,'weight_data')
    msgbox('��ʼ���߾���δ���룡')
elseif isfield(handles,'index_data')&&~isfield(handles,'weight_data')
    msgbox('�жϾ���δ���룡')
else
    msgbox('�������ʼ���߾���&�жϾ���')
end
        
        


% --------------------------------------------------------------------
function JudgeMatrix_Callback(hObject, eventdata, handles)
% hObject    handle to JudgeMatrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function EvaluationMatrix_Callback(hObject, eventdata, handles)
% hObject    handle to EvaluationMatrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ExIP_Callback(hObject, eventdata, handles)
% hObject    handle to ExIP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uipl2,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl,'visible','off');
[filename,pathname]=uigetfile('*.xlsx','ѡ���ʼ���߾���');
fullname=fullfile(pathname,filename);
try
    [data,title]=xlsread(fullname);
    handles.index_data=data;
    handles.index_title=title;
    guidata(hObject,handles);
    show_table(handles.index_data,handles.index_title,handles)
catch
    msgbox('��ѡ��Ҫ����ĳ�ʼ���߾���');  
end



% --------------------------------------------------------------------
function Ndim_Callback(hObject, eventdata, handles)
% hObject    handle to Ndim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt2,'visible','off');
set(handles.uipl2,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl,'visible','off');
if isfield(handles,'classify_data')&&isfield(handles,'index_data')
    value=inputdlg('������Ҫѡ��������ٻ�������');
    if ~isempty(value)
        value=value{1};
        switch value
            case '0'
                A=handles.index_data;
                w=handles.classify_data;
                ndimrst_0=ndim(A,w);
                handles.ndimrst_0=ndimrst_0;
                guidata(hObject,handles);
                show_table(handles.ndimrst_0,handles.index_title,handles);
                set(handles.txt1,'visible','on','string','Ӧ�÷���0���������ٻ�����',...
                    'fontsize',10);
            case '1'
                A=handles.index_data;
                w=handles.classify_data;
                ndimrst_1=ndim1(A,w);
                handles.ndimrst_1=ndimrst_1;
                guidata(hObject,handles);
                show_table(handles.ndimrst_1,handles.index_title,handles); 
                set(handles.txt1,'visible','on','string','Ӧ�÷���1���������ٻ�����',...
                    'fontsize',10);
        end
    end
elseif isfield(handles,'classify_data')&&~isfield(handles,'index_data')
    msgbox('��ʼ���߾���δ���룡');
elseif ~isfield(handles,'classify_data')&&isfield(handles,'index_data')
    msgbox('ָ��������������δ���룡');
elseif ~isfield(handles,'classify_data')&&~isfield(handles,'index_data')
    msgbox('��ʼ���߾���&ָ��������������δ���룡');
end


% --------------------------------------------------------------------
function Excel_import_Callback(hObject, eventdata, handles)
% hObject    handle to Excel_import (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uipl2,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl,'visible','off');
[filename,pathname]=uigetfile('*.xlsx','ѡ���жϾ���');
fullname=fullfile(pathname,filename);
try
    [data,title]=xlsread(fullname);
    handles.weight_data=data;
    handles.weight_title=title;
    guidata(hObject,handles);
    show_table(handles.weight_data,handles.weight_title,handles);
catch
    msgbox('��ѡ��Ҫ������ļ���');
end


        

% --------------------------------------------------------------------
function DirectInput_Callback(hObject, eventdata, handles)
% hObject    handle to DirectInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Idcp_Callback(hObject, eventdata, handles)
% hObject    handle to Idcp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uipl2,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl,'visible','off');
[filename,pathname]=uigetfile('*.xlsx','ѡ��ָ��������������');
fullname=fullfile(pathname,filename);
try
    [data,title]=xlsread(fullname);
    handles.classify_data=data;
    handles.classify_title=title;
    guidata(hObject,handles);
    show_table(handles.classify_data,handles.classify_title,handles)
catch
    msgbox('��ѡ��Ҫ�����ָ�������������飡');
end

%---------------------------------------------------------------------
% ��ʾ���ĺ���
function show_table(data,title,handles)
[m,n]=size(title);
if m==1&&n>1
    set(handles.uitb1,'data',data,'columnname',title,...
        'rowname',{},'fontsize',10,'visible','on');
elseif m>1&&n==1
    set(handles.uitb1,'data',data,'rowname',title,...
        'columnname',{},'fontsize',10,'visible','on');
elseif m>=1&&n>=1
    for i=1:m
        r(i)=title(i,1);
    end
    r=r(2:m);
    for j=1:n
        c(j)=title(1,j);
    end
    c=c(2:n);
    set(handles.uitb1,'data',data,'columnname',c,'rowname',r,'fontsize',10,'visible','on');
else
    [m,n]=size(data);
    for i=1:m
        r(i)={strcat('��',num2str(i))};
    end
    for j=1:n
        c(j)={strcat('��',num2str(j))};
    end
    set(handles.uitb1,'data',data,'fontsize',10,'rowname',r,'columnname',c,'visible','on');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
count=isfield(handles,'ndimrst_0')+isfield(handles,'ndimrst_1');
if count>0
    if get(handles.topsis_cl,'Value')&&get(handles.ahp_weight,'Value')
        if isfield(handles,'weight_data')
            if size(handles.weight_data,2)==size(handles.index_data,2)
                if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
                    flag=inputdlg('��ѡ���������ۼ���������ٻ���������0��1��');
                    try
                        switch flag{1}
                            case '0'
                            topahp_fn(handles,0);   
                            case '1'
                            topahp_fn(handles,1);
                        end
                    catch
                        %--------------------------------------------------
                    end
                elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
                    topahp_fn(handles,0);     
                elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
                    topahp_fn(handles,1);  
                end
            else
                msgbox('�жϾ����������ʼ���߾�����������ȣ�');
            end
        else
            msgbox('�жϾ���δ���룡');
        end
    elseif get(handles.topsis_cl,'Value')&&get(handles.std_weight,'Value')
        if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
            flag=inputdlg('��ѡ���������ۼ���������ٻ���������0��1��');
            try
                switch flag{1}
                    case '0'
                        topstd_fn(handles,0);                                       
                    case '1'
                        topstd_fn(handles,1);                
                end
            catch
                %----------------------------------------------------------
            end
        elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
            topstd_fn(handles,0);
        elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
            topstd_fn(handles,1);
        end
    elseif get(handles.topsis_cl,'Value')&&get(handles.combin_weight,'Value')
        if isfield(handles,'weight_data')
            if size(handles.weight_data,2)==size(handles.index_data,2);
                if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
                    flag=inputdlg('������0��1ѡ���������ۼ���������ٻ�����');
                    try
                        switch flag{1}
                            case '0'
                                topcomb_fn(handles,0);    
                            case '1'
                                topcomb_fn(handles,1);
                        end
                    catch
                        %--------------------------------------------------
                    end
                elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
                    topcomb_fn(handles,0);
                elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
                    topcomb_fn(handles,1);
                end
            else
                msgbox('�жϾ����������ʼ���߾�����������ȣ�');
            end
        else
            msgbox('�жϾ���δ���룡');
        end
    elseif get(handles.gra_cl,'Value')&&get(handles.ahp_weight,'Value')
        if isfield(handles,'weight_data')
            if size(handles.weight_data,2)==size(handles.index_data,2)
                if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
                    flag=inputdlg('������0��1ѡ���������ۼ���������ٻ�����');
                    try
                        switch flag{1}
                            case '0'
                                graahp_fn(handles,0);  
                            case '1'
                                graahp_fn(handles,1);
                        end
                    catch
                        %--------------------------------------------------
                    end
                elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
                    graahp_fn(handles,0); 
                elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
                    graahp_fn(handles,1); 
                end  
            else
                msgbox('�жϾ����������ʼ���߾�����������ȣ�');
            end
        else
            msgbox('�жϾ���δ���룡');
        end
    elseif get(handles.gra_cl,'Value')&&get(handles.std_weight,'Value')
        if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
            flag=inputdlg('������0��1ѡ���������ۼ���������ٻ�����');
            try
                switch flag{1}
                    case '0'
                        grastd_fn(handles,0);  
                    case '1'
                        grastd_fn(handles,1);
                end
            catch
                %----------------------------------------------------------
            end
        elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
            grastd_fn(handles,0);
        elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
            grastd_fn(handles,1);
        end           
    elseif get(handles.gra_cl,'Value')&&get(handles.combin_weight,'Value')
        if isfield(handles,'weight_data')
            if size(handles.weight_data,2)==size(handles.index_data,2)
                if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
                    flag=inputdlg('������0��1ѡ���������ۼ���������ٻ�����');
                    try
                        switch flag{1}
                            case '0'
                                gracomb_fn(handles,0);
                            case '1'
                                gracomb_fn(handles,1);   
                        end
                    catch
                        %--------------------------------------------------
                    end
                elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
                    gracomb_fn(handles,0);
                elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
                    gracomb_fn(handles,1);
                end
            else
                msgbox('�жϾ������ʼ���߾�����������ȣ�');
            end
        else
            msgbox('�жϾ���δ���룡');
        end
    elseif get(handles.tg_cl,'Value')&&get(handles.ahp_weight,'Value')
        if isfield(handles,'weight_data')
            if size(handles.weight_data,2)==size(handles.index_data,2) % �ж��жϾ������ʼ���߾���������Ƿ����
                if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
                    try
                        flag=inputdlg('������0��1ѡ���������ۼ���������ٻ�����');
                        switch flag{1}
                            case '0'
                                tgahp_fn(handles,0);
                            case '1'
                                tgahp_fn(handles,1);
                        end
                    catch
                        %--------------------------------------------------
                    end
                elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
                    tgahp_fn(handles,0);
                elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
                    tgahp_fn(handles,1);
                end
            else
                msgbox('�жϾ������ʼ���߾������������ȣ�');
            end
        else
            msgbox('�жϾ���δ���룡')
        end
    elseif get(handles.tg_cl,'Value')&&get(handles.std_weight,'Value')
        if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
            try
                flag=inputdlg('������0��1ѡ���������ۼ���������ٻ�����');
                switch flag{1}
                    case '0'
                        tgstd_fn(handles,0);
                    case '1'
                        tgstd_fn(handles,1);
                end
            catch
                %----------------------------------------------------------
            end
        elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
            tgstd_fn(handles,0);
        elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
            tgstd_fn(handles,1);
        end
    elseif get(handles.tg_cl,'Value')&&get(handles.combin_weight,'Value')
        if isfield(handles,'weight_data')
            if size(handles.weight_data,2)==size(handles.index_data,2)
                if isfield(handles,'ndimrst_0')&&isfield(handles,'ndimrst_1')
                    try
                        flag=inputdlg('������0��1ѡ���������ۼ���������ٻ�����');
                        switch flag{1}
                            case '0'
                                tgcomb_fn(handles,0);    
                            case '1'
                                tgcomb_fn(handles,1);
                        end
                    catch
                        %--------------------------------------------------
                    end
                elseif isfield(handles,'ndimrst_0')&&~isfield(handles,'ndimrst_1')
                    tgcomb_fn(handles,0);
                elseif isfield(handles,'ndimrst_1')&&~isfield(handles,'ndimrst_0')
                    tgcomb_fn(handles,1);
                end
            else
                msgbox('�жϾ����������ʼ���߾�����������ȣ�');
            end
        else
            msgbox('�жϾ���δ���룡');
        end  
    end
else
    msgbox('��Գ�ʼ���߾�����������ٻ�����');
end

function set_topsis(handles,u)
u_degree=sprintf('%8.2f',u');
u_degree=strcat('Topsis���߶ȣ�',u_degree);
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uitb1,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl2,'visible','on');
set(handles.txt3,'visible','off');
set(handles.txt5,'visible','off');
set(handles.txt4,'visible','on','string',u_degree,'fontsize',10); 

function gra_display(handles,rd,rd_1,rd_ultimate,grarst,grarst_1)
rd=sprintf('%8.2f',rd');
rd=strcat('����ɫ�����ȣ�',rd);
rd_1=sprintf('%8.2f',rd_1');
rd_1=strcat('����ɫ�����ȣ�',rd_1);
rd_ultimate=sprintf('%8.2f',rd_ultimate');
rd_ultimate=strcat('��ɫ�����ȣ�',rd_ultimate);
[m,n]=size(handles.index_title);
col_title=handles.index_title(1,2:n);
row_title=handles.index_title(2:m,1);
set(handles.txt1,'visible','on','string','���������������Ļ�ɫ����ϵ������',...
    'fontsize',10);
set(handles.txt2,'visible','on','string','�������븺�����Ļ�ɫ����ϵ������',...
    'fontsize',10);
set(handles.uitb1,'data',grarst,'rowname',row_title,'columnname',col_title,...
    'fontsize',10,'visible','on');
set(handles.uitb2,'data',grarst_1,'rowname',row_title,'columnname',col_title,...
    'fontsize',10,'visible','on');
set(handles.uipl2,'visible','on');
set(handles.txt3,'visible','on','string',rd,'fontsize',10);
set(handles.txt4,'visible','on','string',rd_1,'fontsize',10);
set(handles.txt5,'visible','on','string',rd_ultimate,'fontsize',10);

function tg_display(handles,tg_rst)
tg_rst=sprintf('%8.2f',tg_rst);
tg_rst=strcat('TG���߶ȣ�',tg_rst);
set(handles.txt1,'visible','off');
set(handles.txt2,'visible','off');
set(handles.uitb1,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl2,'visible','on');
set(handles.txt3,'visible','off');
set(handles.txt5,'visible','off');
set(handles.txt4,'visible','on','string',tg_rst,'fontsize',10);

function Ahp_display(handles,ahpweight_value)
set(handles.txt2,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl,'visible','off');
set(handles.uipl2,'visible','off');
set(handles.txt1,'string','��η�����Ȩ�ؼ�������','fontsize',10,...
    'visible','on');
if ~isempty(handles.weight_title)
    [m,n]=size(handles.weight_title);
    if m==1
        title=handles.weight_title(1,1:n);
    elseif m>1
        title=handles.weight_title(1,2:n);
    end
else
    title={};
end
set(handles.uitb1,'data',ahpweight_value,'columnname',...
    title,'rowname','Ȩ��','fontsize',10,'visible','on');

function MeanSquare_display(handles,stdweight_value)
set(handles.txt2,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl,'visible','off');
set(handles.uipl2,'visible','off');
set(handles.txt1,'string','������Ȩ�ؼ�������',...
    'fontsize',10,'visible','on');
if ~isempty(handles.index_title)
    [m,n]=size(handles.index_title);
    if m==1
        title=handles.index_title(1,1:n);
    elseif m>1
        title=handles.index_title(1,2:n);
    end
else
    title={};
end
set(handles.uitb1,'data',stdweight_value,...
'columnname', title,'rowname','Ȩ��','fontsize',10,...
'visible','on')

function CombineSet_display(handles,comweight_value)
set(handles.txt2,'visible','off');
set(handles.uitb2,'visible','off');
set(handles.uipl,'visible','off');
set(handles.uipl2,'visible','off');
set(handles.txt1,'string','���Ȩ�ؼ�������',...
    'fontsize',10,'visible','on');
if ~isempty(handles.index_title)
    [m,n]=size(handles.index_title);
    if m==1
        title=handles.index_title(1,1:n);
    elseif m>1
        title=handles.index_title(1,2:n);
    end
else
    title={};
end
set(handles.uitb1,'data',comweight_value,...
'columnname', title,'rowname','Ȩ��','fontsize',10,...
'visible','on')

function topahp_fn(handles,bool)
global Decision;
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
try
    w=AHP(handles.weight_data);% wΪ������
    H=[R;w'];
    u=topsis(H);
    Decision.top_ahp=u;
    set_topsis(handles,u);
catch
    try
        s_weight=inputdlg('�жϾ��󲻷��ϸ�ʽ���Ƿ��ֶ�����AHPȨ�أ�');
        w=str2num(s_weight{1});
        if size(w,2)==size(handles.index_data,2)&&abs(sum(w)-1)<1e-3
            H=[R;w];
            u=topsis(H);
            Decision.top_ahp=u;
            set_topsis(handles,u);
        else
            msgbox('����Ȩ��֮�Ͳ�����1��Ȩ��ά��������')
        end 
    catch
        %----------------------------------------------------------------
    end
end
     
function topstd_fn(handles,bool)
global Decision
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
w=stdw(R);
H=[R;w];
u=topsis(H);
Decision.top_std=u;
set_topsis(handles,u);

function topcomb_fn(handles,bool)
global Decision
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
w1=std(R);
a=0.5;
try
    w2=AHP(handles.weight_data);% w2Ϊ������
    w=a*w1+(1-a)*w2';
    H=[R;w];
    u=topsis(H);
    Decision.top_comb=u;
    set_topsis(handles,u);
catch
    try
        s_weight=inputdlg('�жϾ��󲻷��ϸ�ʽ���Ƿ��ֶ�����AHPȨ�أ�');
        w2=str2num(s_weight{1});
        if size(w2,2)==size(handles.index_data,2)&&abs(sum(w2)-1)<1e-3
            w=a*w1+(1-a)*w2;
            H=[R;w];
            u=topsis(H);
            Decision.top_comb=u;
            set_topsis(handles,u);
        else
            msgbox('����Ȩ��֮�Ͳ�����1��Ȩ��ά��������')
        end
    catch
        %----------------------------------------------------------------
    end
end

function graahp_fn(handles,bool)
global Decision
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
try
    w=AHP(handles.weight_data);% wΪ������
    H=[R;w'];
    grarst=GRA(R);%���������������Ļ�ɫ����ϵ������
    grarst_1=GRA1(R);%�������븺�����Ļ�ɫ����ϵ������
    rd=RD(H);%���������������Ļ�ɫ������
    rd_1=RD1(H);%�������븺�����Ļ�ɫ������
    rd_ultimate=RD_ultimate(H);
    Decision.gra_ahp=rd_ultimate;
    gra_display(handles,rd,rd_1,rd_ultimate,grarst,grarst_1);
catch
    try
        s_weight=inputdlg('�жϾ��󲻷��ϸ�ʽ���Ƿ��ֶ�����AHPȨ�أ�');
        w=str2num(s_weight{1});
        if size(w,2)==size(handles.index_data,2)&&abs(sum(w)-1)<1e-3
            H=[R;w];
            grarst=GRA(R);%���������������Ļ�ɫ����ϵ������
            grarst_1=GRA1(R);%�������븺�����Ļ�ɫ����ϵ������
            rd=RD(H);%���������������Ļ�ɫ������
            rd_1=RD1(H);%�������븺�����Ļ�ɫ������
            rd_ultimate=RD_ultimate(H);
            Decision.gra_ahp=rd_ultimate;
            gra_display(handles,rd,rd_1,rd_ultimate,grarst,grarst_1);
        else
            msgbox('����Ȩ��֮�Ͳ�����1��Ȩ��ά��������')
        end
    catch
        %----------------------------------------------------
    end
end

 function grastd_fn(handles,bool)
global Decision;
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
w=stdw(R);% wΪ������
H=[R;w];
grarst=GRA(R);%���������������Ļ�ɫ����ϵ������
grarst_1=GRA1(R);%�������븺�����Ļ�ɫ����ϵ������
rd=RD(H);%���������������Ļ�ɫ������
rd_1=RD1(H);%�������븺�����Ļ�ɫ������
rd_ultimate=RD_ultimate(H);
Decision.gra_std=rd_ultimate;
gra_display(handles,rd,rd_1,rd_ultimate,grarst,grarst_1);

function gracomb_fn(handles,bool)
global Decision;
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
w1=stdw(R);
a=0.5;
try
    w2=AHP(handles.weight_data);% w2Ϊ������
    w=a*w1+(1-a)*w2';
    H=[R;w];
    grarst=GRA(R);%���������������Ļ�ɫ����ϵ������
    grarst_1=GRA1(R);%�������븺�����Ļ�ɫ����ϵ������
    rd=RD(H);%���������������Ļ�ɫ������
    rd_1=RD1(H);%�������븺�����Ļ�ɫ������
    rd_ultimate=RD_ultimate(H);
    Decision.gra_comb=rd_ultimate;
    gra_display(handles,rd,rd_1,rd_ultimate,grarst,grarst_1);
catch
    try
        s_weight=inputdlg('�жϾ��󲻷��ϸ�ʽ���Ƿ��ֶ�����AHPȨ�أ�');
        w2=str2num(s_weight{1});
        if size(w2,2)==size(handles.index_data,2)&&abs(sum(w2)-1)<1e-3
            w=a*w1+(1-a)*w2;
            H=[R;w];
            grarst=GRA(R);%���������������Ļ�ɫ����ϵ������
            grarst_1=GRA1(R);%�������븺�����Ļ�ɫ����ϵ������
            rd=RD(H);%���������������Ļ�ɫ������
            rd_1=RD1(H);%�������븺�����Ļ�ɫ������
            rd_ultimate=RD_ultimate(H);
            Decision.gra_comb=rd_ultimate;
            gra_display(handles,rd,rd_1,rd_ultimate,grarst,grarst_1);
        else
            msgbox('����Ȩ��֮�Ͳ�����1��Ȩ��ά��������')
        end
    catch
        %---------------------------------------------------------
    end
end

function tgahp_fn(handles,bool)
global Decision;
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
try
    w=AHP(handles.weight_data); % wΪ������ 
    H=[R;w'];
    u=topsis(H);
    r=RD_ultimate(H);
    tg_rst=TG([u';r']);
    Decision.tg_ahp=tg_rst;
    tg_display(handles,tg_rst);
catch
    try
        s_weight=inputdlg('�жϾ��󲻷��ϸ�ʽ���Ƿ��ֶ�����AHPȨ�أ�');
        w=str2num(s_weight{1});
        if size(w,2)==size(handles.index_data,2)&&abs(sum(w)-1)<1e-3
            H=[R;w];
            u=topsis(H);
            r=RD_ultimate(H);
            tg_rst=TG([u';r']);
            Decision.tg_ahp=tg_rst;
            tg_display(handles,tg_rst);
        else
            msgbox('����Ȩ��֮�Ͳ�����1��Ȩ��ά��������')
        end 
    catch
        %-------------------------------------------------------
    end
end

function tgstd_fn(handles,bool)
global Decision;
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
w=stdw(R);
u=topsis([R;w]);
r=RD_ultimate([R;w]);
tg_rst=TG([u';r']);
Decision.tg_std=tg_rst;
tg_display(handles,tg_rst);

function tgcomb_fn(handles,bool)
global Decision;
if bool
    R=handles.ndimrst_1;
else
    R=handles.ndimrst_0;
end
w1=stdw(R);
a=0.5;
try
    w2=AHP(handles.weight_data);%w2Ϊ������
    w=a*w1+(1-a)*w2';
    H=[R;w];
    u=topsis(H);
    r=RD_ultimate(H);
    tg_rst=TG([u';r']);
    Decision.tg_comb=tg_rst;
    tg_display(handles,tg_rst);
catch
    try
        s_weight=inputdlg('�жϾ��󲻷��ϸ�ʽ���Ƿ��ֶ�����AHPȨ�أ�');
        w2=str2num(s_weight{1});
        if size(w2,2)==size(handles.index_data,2)&&abs(sum(w2)-1)<1e-3
            w=a*w1+(1-a)*w2;
            H=[R;w];
            u=topsis(H);
            r=RD_ultimate(H);
            tg_rst=TG([u';r']);
            Decision.tg_comb=tg_rst;
            tg_display(handles,tg_rst);
        else
            msgbox('����Ȩ��֮�Ͳ�����1��Ȩ��ά��������')
        end 
    catch
        %--------------------------------------------------------
    end
end
        


% --------------------------------------------------------------------
function top_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to top_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GUI
GUI.fig_1=figure('NumberTitle','off','menubar','none','Name','Topsis����',...
    'resize','off');
GUI.axes_1=axes('parent',GUI.fig_1,'position',[0.1 0.1 0.5 0.8]);
GUI.txt_1=uicontrol('parent',GUI.fig_1,'style','Text',...
    'position',[345,260,210,115],'BackgroundColor',[0.7 0.7 0.7]);
GUI.rado_ahpwt1=uicontrol('parent',GUI.fig_1,'style','radiobutton',...
    'position',[400,200,100,40],'string','AHPȨ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_ahpwt1);
GUI.rado_stdwt1=uicontrol('parent',GUI.fig_1,'style','radiobutton',...
    'position',[400,150,100,40],'string','������Ȩ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_stdwt1);
GUI.rado_combwt1=uicontrol('parent',GUI.fig_1,'style','radiobutton',...
    'position',[400,100,100,40],'string','���Ȩ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_combwt1);
GUI.btn_ays1=uicontrol('parent',GUI.fig_1,'style','pushbutton',...
    'position',[410,40,60,30],'string','����','fontsize',10,...
    'callback',@btn_topays1);

function btn_topays1(~,~)
global GUI
global Decision
if get(GUI.rado_ahpwt1,'value')
    % ���� topsis ���߶ȵ�����ͼ ahpȨ��
    if isfield(Decision,'top_ahp')
        graph(Decision.top_ahp,'Topsis��');
        str1=sprintf(strcat('Topsis���۽����\n\n',rstdisp(Decision.top_ahp')));
        set(GUI.txt_1,'fontsize',10,'string',str1,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ�����AHPȨ��Ϊ������topsis���߶ȣ�');
    end        
elseif get(GUI.rado_stdwt1,'value')
    % ����topsis ���߶ȵ�����ͼ ������Ȩ��
    if isfield(Decision,'top_std')
        graph(Decision.top_std,'Topsis��');
        str1=sprintf(strcat('Topsis���۽����\n\n',rstdisp(Decision.top_std')));
        set(GUI.txt_1,'fontsize',10,'string',str1,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ����Ծ�����Ȩ��Ϊ�����ľ��߶ȣ�');
    end
elseif get(GUI.rado_combwt1,'value')
    % ����topsis ���߶ȵ�����ͼ ���Ȩ��
    if isfield(Decision,'top_comb')
        graph(Decision.top_comb,'Topsis��');
        str1=sprintf(strcat('Topsis���۽����\n\n',rstdisp(Decision.top_comb')));
        set(GUI.txt_1,'fontsize',10,'string',str1,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ��������Ȩ��Ϊ�����ľ��߶ȣ�');
    end
else
    msgbox('��ѡ������topsis���߶ȼ����Ȩ��ֵ��');
end
    
        
function rado_ahpwt1(~,~)
global GUI;
set(GUI.rado_ahpwt1,'value',1);
set(GUI.rado_stdwt1,'Value',0);
set(GUI.rado_combwt1,'Value',0);

function rado_stdwt1(~,~)
global GUI;
set(GUI.rado_ahpwt1,'value',0);
set(GUI.rado_stdwt1,'Value',1);
set(GUI.rado_combwt1,'Value',0);  

function rado_combwt1(~,~)
global GUI;
set(GUI.rado_ahpwt1,'value',0);
set(GUI.rado_stdwt1,'Value',0);
set(GUI.rado_combwt1,'Value',1);  

% --------------------------------------------------------------------
function gra_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to gra_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GUI
GUI.fig_2=figure('NumberTitle','off','menubar','none','Name','GRA����',...
    'resize','off');
GUI.axes_2=axes('parent',GUI.fig_2,'position',[0.1 0.1 0.5 0.8]);
GUI.txt_2=uicontrol('parent',GUI.fig_2,'style','Text',...
    'position',[345,260,210,115],'BackgroundColor',[0.7 0.7 0.7]);
GUI.rado_ahpwt2=uicontrol('parent',GUI.fig_2,'style','radiobutton',...
    'position',[400,200,100,40],'string','AHPȨ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_ahpwt2);
GUI.rado_stdwt2=uicontrol('parent',GUI.fig_2,'style','radiobutton',...
    'position',[400,150,100,40],'string','������Ȩ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_stdwt2);
GUI.rado_combwt2=uicontrol('parent',GUI.fig_2,'style','radiobutton',...
    'position',[400,100,100,40],'string','���Ȩ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_combwt2);
GUI.btn_ays2=uicontrol('parent',GUI.fig_2,'style','pushbutton',...
    'position',[410,40,60,30],'string','����','fontsize',10,...
    'callback',@btn_graays2);

function btn_graays2(~,~)
global GUI
global Decision
if get(GUI.rado_ahpwt2,'value')
    % ���� GRA ���߶ȵ�����ͼ ahpȨ��
    if isfield(Decision,'gra_ahp')
        graph(Decision.gra_ahp,'GRA��');
        str2=sprintf(strcat('GRA���۽����\n\n',rstdisp(Decision.gra_ahp')));
        set(GUI.txt_2,'fontsize',10,'string',str2,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ�����AHPȨ��Ϊ������GRA���߶ȣ�');
    end        
elseif get(GUI.rado_stdwt2,'value')
    % ����GRA ���߶ȵ�����ͼ ������Ȩ��
    if isfield(Decision,'gra_std')
        graph(Decision.gra_std,'GRA��');
        str2=sprintf(strcat('GRA���۽����\n\n',rstdisp(Decision.gra_std')));
        set(GUI.txt_2,'fontsize',10,'string',str2,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ����Ծ�����Ȩ��Ϊ������GRA���߶ȣ�');
    end
elseif get(GUI.rado_combwt2,'value')
    % ����topsis ���߶ȵ�����ͼ ���Ȩ��
    if isfield(Decision,'gra_comb')
        graph(Decision.gra_comb,'GRA��');
        str2=sprintf(strcat('GRA���۽����\n\n',rstdisp(Decision.gra_comb')));
        set(GUI.txt_2,'fontsize',10,'string',str2,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ��������Ȩ��Ϊ������GRA���߶ȣ�');
    end
else
    msgbox('��ѡ������GRA���߶ȼ����Ȩ��ֵ��');
end

function rado_ahpwt2(~,~)
global GUI;
set(GUI.rado_ahpwt2,'value',1);
set(GUI.rado_stdwt2,'Value',0);
set(GUI.rado_combwt2,'Value',0);

function rado_stdwt2(~,~)
global GUI;
set(GUI.rado_ahpwt2,'value',0);
set(GUI.rado_stdwt2,'Value',1);
set(GUI.rado_combwt2,'Value',0);  

function rado_combwt2(~,~)
global GUI;
set(GUI.rado_ahpwt2,'value',0);
set(GUI.rado_stdwt2,'Value',0);
set(GUI.rado_combwt2,'Value',1);  


% --------------------------------------------------------------------
function tg_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to tg_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GUI
GUI.fig_3=figure('NumberTitle','off','menubar','none','Name','TG����',...
    'resize','off');
GUI.axes_3=axes('parent',GUI.fig_3,'position',[0.1 0.1 0.5 0.8]);
GUI.txt_3=uicontrol('parent',GUI.fig_3,'style','Text',...
    'position',[345,260,210,115],'BackgroundColor',[0.7 0.7 0.7]);
GUI.rado_ahpwt3=uicontrol('parent',GUI.fig_3,'style','radiobutton',...
    'position',[400,200,100,40],'string','AHPȨ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_ahpwt3);
GUI.rado_stdwt3=uicontrol('parent',GUI.fig_3,'style','radiobutton',...
    'position',[400,150,100,40],'string','������Ȩ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_stdwt3);
GUI.rado_combwt3=uicontrol('parent',GUI.fig_3,'style','radiobutton',...
    'position',[400,100,100,40],'string','���Ȩ��','fontsize',10,...
    'BackgroundColor',[0.8 0.8 0.8],'callback',@rado_combwt3);
GUI.btn_ays3=uicontrol('parent',GUI.fig_3,'style','pushbutton',...
    'position',[410,40,60,30],'string','����','fontsize',10,...
    'CallBack',@btn_tgays3);

function btn_tgays3(~,~)
global GUI
global Decision
if get(GUI.rado_ahpwt3,'value')
    % ����TG���߶ȵ�����ͼ ahpȨ��
    if isfield(Decision,'tg_ahp')
        graph(Decision.tg_ahp','TG��');%��tg_ahpתΪ������
        str3=sprintf(strcat('TG���۽����\n\n',rstdisp(Decision.tg_ahp)));
        set(GUI.txt_3,'fontsize',10,'string',str3,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ�����AHPȨ��Ϊ������TG���߶ȣ�');
    end        
elseif get(GUI.rado_stdwt3,'value')
    % ����TG���߶ȵ�����ͼ ������Ȩ��
    if isfield(Decision,'tg_std')
        graph(Decision.tg_std','TG��');%��tg_stdתΪ������
        str3=sprintf(strcat('TG���۽����\n\n',rstdisp(Decision.tg_std)));
        set(GUI.txt_3,'fontsize',10,'string',str3,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ����Ծ�����Ȩ��Ϊ������TG���߶ȣ�');
    end
elseif get(GUI.rado_combwt3,'value')
    % ����TG���߶ȵ�����ͼ ���Ȩ��
    if isfield(Decision,'tg_comb')
        graph(Decision.tg_comb','TG��');%��tg_combתΪ������
        str3=sprintf(strcat('TG���۽����\n\n',rstdisp(Decision.tg_comb)));
        set(GUI.txt_3,'fontsize',10,'string',str3,...
            'HorizontalAlignment','left');
    else
        msgbox('���ȼ��������Ȩ��Ϊ������TG���߶ȣ�');
    end
else
    msgbox('��ѡ������TG���߶ȼ����Ȩ��ֵ��');
end

function rado_ahpwt3(~,~)
global GUI;
set(GUI.rado_ahpwt3,'value',1);
set(GUI.rado_stdwt3,'Value',0);
set(GUI.rado_combwt3,'Value',0);

function rado_stdwt3(~,~)
global GUI;
set(GUI.rado_ahpwt3,'value',0);
set(GUI.rado_stdwt3,'Value',1);
set(GUI.rado_combwt3,'Value',0);  

function rado_combwt3(~,~)
global GUI;
set(GUI.rado_ahpwt3,'value',0);
set(GUI.rado_stdwt3,'Value',0);
set(GUI.rado_combwt3,'Value',1);  


% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all
close all


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
