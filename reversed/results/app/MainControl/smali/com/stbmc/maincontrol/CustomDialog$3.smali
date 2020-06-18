.class Lcom/stbmc/maincontrol/CustomDialog$3;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/CustomDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CustomDialog;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CustomDialog;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomDialog$3;->this$0:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    sget-object v0, Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;->OK:Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomDialog;->access$002(Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;)Lcom/stbmc/maincontrol/CustomDialog$DIALOG_RESULT;

    .line 103
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomDialog$3;->this$0:Lcom/stbmc/maincontrol/CustomDialog;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/CustomDialog;->cancel()V

    .line 104
    return-void
.end method
