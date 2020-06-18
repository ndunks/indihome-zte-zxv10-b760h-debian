.class Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;
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
    .line 624
    iput-object p1, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    iput-object p6, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->val$DialogView_poweroff:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    .line 635
    iget-object v3, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "str3":Ljava/lang/String;
    iget-object v3, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v3}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "str4":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "strEnd":Ljava/lang/String;
    const-string v3, "AutoPowerOffDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "####===> strEnd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v3, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-static {v3}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$100(Lcom/stbmc/maincontrol/AutoPowerOffDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 627
    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "str1":Ljava/lang/String;
    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    invoke-virtual {v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "str2":Ljava/lang/String;
    iget-object v3, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->val$DialogView_poweroff:Landroid/view/View;

    const v4, 0x7f070019

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/stbmc/maincontrol/AutoPowerOffDialog;->access$102(Lcom/stbmc/maincontrol/AutoPowerOffDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 630
    iget-object v2, p0, Lcom/stbmc/maincontrol/AutoPowerOffDialog$4;->this$0:Lcom/stbmc/maincontrol/AutoPowerOffDialog;

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

    .line 631
    return-void
.end method
