.class Lcom/stbmc/maincontrol/McShowMsgBox$4$1;
.super Ljava/lang/Object;
.source "McShowMsgBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McShowMsgBox$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mtoast:Landroid/widget/Toast;

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/stbmc/maincontrol/McShowMsgBox$4;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McShowMsgBox$4;)V
    .locals 1
    .param p1, "this$1"    # Lcom/stbmc/maincontrol/McShowMsgBox$4;

    .prologue
    const/4 v0, 0x0

    .line 236
    iput-object p1, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->this$1:Lcom/stbmc/maincontrol/McShowMsgBox$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->temp:Ljava/lang/CharSequence;

    .line 239
    iput-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 257
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 259
    const-string v0, "McShowMsgBox"

    const-string v1, "============>isFocused()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "McShowMsgBox"

    const-string v1, "============>mtoast.cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 267
    :cond_0
    const-string v0, "McShowMsgBox"

    const-string v1, "============>after isFocused()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 270
    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->this$1:Lcom/stbmc/maincontrol/McShowMsgBox$4;

    iget-object v0, v0, Lcom/stbmc/maincontrol/McShowMsgBox$4;->this$0:Lcom/stbmc/maincontrol/McShowMsgBox;

    const v1, 0x7f0500a1

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    .line 274
    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->mtoast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 283
    invoke-static {}, Lcom/stbmc/maincontrol/McShowMsgBox;->access$100()Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomDialog;->mBtnOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 243
    iput-object p1, p0, Lcom/stbmc/maincontrol/McShowMsgBox$4$1;->temp:Ljava/lang/CharSequence;

    .line 244
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 250
    return-void
.end method
