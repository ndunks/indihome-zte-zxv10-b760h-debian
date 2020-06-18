.class public Lcom/ztestb/basecomp/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ztestb/basecomp/BaseComponentService;


# direct methods
.method public constructor <init>(Lcom/ztestb/basecomp/BaseComponentService;)V
    .locals 0

    iput-object p1, p0, Lcom/ztestb/basecomp/c;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ztestb/basecomp/BaseComponentService;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCBroadcastReceiver action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.zte.combkey.grab_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Logcat"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "TcpdumpEth0"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "TcpdumpWlan0"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "ExtraInfo"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/ztestb/basecomp/BaseComponentServiceJni;->start_Ulog(IIII)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "com.zte.combkey.grab_log_stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ztestb/basecomp/BaseComponentServiceJni;->stop_Ulog()V

    goto :goto_0

    :cond_1
    const-string v1, "com.zte.combkey.clear_usb_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ztestb/basecomp/BaseComponentServiceJni;->clear_Ulog()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ztestb/basecomp/BaseComponentService;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
