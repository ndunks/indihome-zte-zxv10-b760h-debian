.class Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;
.super Landroid/os/CountDownTimer;
.source "AutoPowerOffDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/AutoPowerOffDialog;->showAlertDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

.field final synthetic val$DialogView_poweroff:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/AutoPowerOffDialog;JJLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/AutoPowerOffDialog;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 544
    iput-object p1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    iput-object p6, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->val$DialogView_poweroff:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    .prologue
    .line 555
    iget-object v4, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v4}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "str3":Ljava/lang/String;
    iget-object v4, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v4}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "str4":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "strEnd":Ljava/lang/String;
    const-string v4, "AutoPowerOffDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "####===> strEnd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v4, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v4}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$100(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    const/16 v4, 0x72

    iget-object v5, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v5}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$200(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/16 v4, 0x74

    iget-object v5, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v5}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$200(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/16 v4, 0x73

    iget-object v5, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v5}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$200(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 564
    :cond_0
    const-string v4, "AutoPowerOffDialog"

    const-string v5, "####===> send broadcast to hide dialog."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 566
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "common.customdialog.DIALOG_HIDE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    iget-object v4, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v4, v0}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 547
    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "str1":Ljava/lang/String;
    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "str2":Ljava/lang/String;
    iget-object v3, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->val$DialogView_poweroff:Landroid/view/View;

    const v4, 0x7f070019

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$102(Lcom/stbmc/maincontrol/AutoPowerOffDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 550
    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$2;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$100(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    return-void
.end method
