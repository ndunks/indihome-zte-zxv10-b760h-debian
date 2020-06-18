.class Lcom/stbmc/maincontrol/McActivity$3;
.super Ljava/lang/Object;
.source "McActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McActivity;->ShowOneButtonDialog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McActivity;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/stbmc/maincontrol/McActivity$3;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$3;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-static {v1}, Lcom/stbmc/maincontrol/McActivity;->access$000(Lcom/stbmc/maincontrol/McActivity;)Lcom/stbmc/maincontrol/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/CustomDialog;->getDialogResult()Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    move-result-object v0

    .line 141
    .local v0, "result":Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;
    sget-object v1, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->OK:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    invoke-virtual {v0, v1}, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$3;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-virtual {v1, v2, v2}, Lcom/stbmc/maincontrol/McActivity;->SendDialogResult(II)V

    .line 143
    iget-object v1, p0, Lcom/stbmc/maincontrol/McActivity$3;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-virtual {v1}, Lcom/stbmc/maincontrol/McActivity;->finish()V

    .line 145
    :cond_0
    return-void
.end method
