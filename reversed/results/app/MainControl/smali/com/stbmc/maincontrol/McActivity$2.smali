.class Lcom/stbmc/maincontrol/McActivity$2;
.super Ljava/lang/Object;
.source "McActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McActivity;->ShowNoButtonDialog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
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
    .line 117
    iput-object p1, p0, Lcom/stbmc/maincontrol/McActivity$2;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity$2;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-virtual {v0, v1, v1}, Lcom/stbmc/maincontrol/McActivity;->SendDialogResult(II)V

    .line 120
    iget-object v0, p0, Lcom/stbmc/maincontrol/McActivity$2;->this$0:Lcom/stbmc/maincontrol/McActivity;

    invoke-virtual {v0}, Lcom/stbmc/maincontrol/McActivity;->finish()V

    .line 121
    return-void
.end method
