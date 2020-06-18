.class Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;
.super Landroid/os/CountDownTimer;
.source "AutoPowerOffDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showPowerOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 670
    iput-object p1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$100(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "done!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 673
    iget-object v1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    const v2, 0x7f070019

    invoke-virtual {v0, v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$102(Lcom/stbmc/maincontrol/AutoPowerOffDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 674
    iget-object v0, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$5;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$100(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seconds remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    return-void
.end method
