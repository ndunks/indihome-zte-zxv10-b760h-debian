.class public Lcom/stbmc/maincontrol/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;,
        Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;
    }
.end annotation


# static fields
.field private static mResult:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

.field public static stytleFlag:I


# instance fields
.field public mBtnCancel:Landroid/widget/Button;

.field public mBtnOk:Landroid/widget/Button;

.field public mEditText:Landroid/widget/EditText;

.field private mInfo:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field public mTxtViewInfo:Landroid/widget/TextView;

.field public mTxtViewTitle:Landroid/widget/TextView;

.field private mType:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput v0, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    .line 160
    sget-object v0, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->CANCEL:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    sput-object v0, Lcom/stbmc/maincontrol/CustomDialog;->mResult:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mTitle:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mInfo:Ljava/lang/String;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->message:Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->ALERT:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mType:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;)Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    .prologue
    .line 13
    sput-object p0, Lcom/stbmc/maincontrol/CustomDialog;->mResult:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 51
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 114
    const-string v1, "========================CustomDialog"

    const-string v2, "=============="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 116
    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->ALERT:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CustomDialog;->mType:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    if-ne v1, v2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomDialog;->cancel()V

    .line 126
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDialogResult()Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/stbmc/maincontrol/CustomDialog;->mResult:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "styleFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget v0, Lcom/stbmc/maincontrol/CustomDialog;->stytleFlag:I

    if-nez v0, :cond_0

    .line 134
    const-string v0, "init"

    const-string v1, "come in stytleFlag=0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialog;->setContentView(I)V

    .line 142
    :goto_0
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mTxtViewTitle:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mTxtViewInfo:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mEditText:Landroid/widget/EditText;

    .line 145
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnOk:Landroid/widget/Button;

    .line 146
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnCancel:Landroid/widget/Button;

    .line 147
    return-void

    .line 139
    :cond_0
    const-string v0, "init"

    const-string v1, "come in stytleFlag=1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/stbmc/maincontrol/CustomDialog;->setContentView(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomDialog;->init()V

    .line 63
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mTxtViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mTxtViewInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialog;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mType:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->QUESTION:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnOk:Landroid/widget/Button;

    new-instance v1, Lcom/stbmc/maincontrol/CustomDialog$1;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/CustomDialog$1;-><init>(Lcom/stbmc/maincontrol/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/stbmc/maincontrol/CustomDialog$2;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/CustomDialog$2;-><init>(Lcom/stbmc/maincontrol/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-object v0, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->ALERT:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialog;->mType:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    if-ne v0, v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnOk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_2
    sget-object v0, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;->SURE:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomDialog;->mType:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnOk:Landroid/widget/Button;

    new-instance v1, Lcom/stbmc/maincontrol/CustomDialog$3;

    invoke-direct {v1, p0}, Lcom/stbmc/maincontrol/CustomDialog$3;-><init>(Lcom/stbmc/maincontrol/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public setDialogProperity(Ljava/lang/String;Ljava/lang/String;Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomDialog;->mTitle:Ljava/lang/String;

    .line 32
    :cond_0
    if-eqz p2, :cond_1

    .line 33
    iput-object p2, p0, Lcom/stbmc/maincontrol/CustomDialog;->mInfo:Ljava/lang/String;

    .line 36
    :cond_1
    if-eqz p3, :cond_2

    .line 37
    iput-object p3, p0, Lcom/stbmc/maincontrol/CustomDialog;->mType:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_TYPE;

    .line 40
    :cond_2
    return-void
.end method
