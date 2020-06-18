.class Lcom/stbmc/maincontrol/McShowMsgBox$4;
.super Ljava/lang/Thread;
.source "McShowMsgBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McShowMsgBox;->ShowButtonMsgBox(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McShowMsgBox;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McShowMsgBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McShowMsgBox;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4;->this$0:Lcom/stbmc/maincontrol/McShowMsgBox;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    const-string v1, "McShowMsgBox"

    const-string v2, "============>come in thread again\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomDialog;->mEditText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 223
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 289
    :goto_1
    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomDialog;->mEditText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 232
    const-string v1, "McShowMsgBox"

    const-string v2, "============>mEditText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomDialog;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;

    invoke-direct {v2, p0}, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;-><init>(Lcom/stbmc/maincontrol/McShowMsgBox$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method
