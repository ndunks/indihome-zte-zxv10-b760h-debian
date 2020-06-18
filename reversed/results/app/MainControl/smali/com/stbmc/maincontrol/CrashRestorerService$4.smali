.class Lcom/stbmc/maincontrol/CrashRestorerService$4;
.super Landroid/content/BroadcastReceiver;
.source "CrashRestorerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CrashRestorerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CrashRestorerService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CrashRestorerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CrashRestorerService;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    const-string v0, "KeyCode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "keycode":Ljava/lang/String;
    const-string v0, "yimin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "ok"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->OK:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    if-ne v0, v1, :cond_1

    .line 143
    const-string v0, "yimin"

    const-string v1, "reboot system"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$000()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v0

    const-string v1, "System"

    const-string v2, "WorkMode"

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v2, v9}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 145
    invoke-static {}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$000()Lcommon/android/mscpcfg/McspCfgmanager;

    move-result-object v0

    const-string v1, "System"

    const-string v2, "SafeErrCode"

    const/4 v9, 0x3

    invoke-virtual {v0, v1, v2, v9}, Lcommon/android/mscpcfg/McspCfgmanager;->putInteger(Ljava/lang/String;Ljava/lang/String;I)I

    .line 149
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    const/4 v0, 0x4

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    .line 157
    .local v3, "aData":[B
    const/4 v4, 0x4

    .line 158
    .local v4, "aDataLen":I
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 159
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 160
    .local v6, "aReplyLen":[I
    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v1, v6, v0

    .line 161
    invoke-static {}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$100()Lcom/stbmc/maincontrol/ClientManager;

    move-result-object v0

    const-string v1, "AP_C_MC"

    const v2, 0x1405006

    invoke-virtual/range {v0 .. v6}, Lcom/stbmc/maincontrol/ClientManager;->cc_syncSend(Ljava/lang/String;I[BI[B[I)I

    .line 192
    .end local v3    # "aData":[B
    .end local v4    # "aDataLen":I
    .end local v5    # "aReply":[B
    .end local v6    # "aReplyLen":[I
    :cond_0
    :goto_1
    return-void

    .line 151
    :catch_0
    move-exception v7

    .line 153
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, "ok"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->CANCEL:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    if-ne v0, v1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v1, "removeView cancle CrashRestoryElapse "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-static {v1}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$200(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 169
    const-string v0, "sys.Restore.cancel"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->nocancel:Z

    .line 171
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->CrashRestoryElapse:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_1

    .line 173
    :cond_2
    const-string v0, "left"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->OK:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    if-ne v0, v1, :cond_3

    .line 175
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v1, "press left"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->CANCEL:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    iput-object v1, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    .line 178
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$300(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 179
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$400(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 183
    :cond_3
    const-string v0, "right"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->CANCEL:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->TAG:Ljava/lang/String;

    const-string v1, "press right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    sget-object v1, Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;->OK:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    iput-object v1, v0, Lcom/stbmc/maincontrol/CrashRestorerService;->state:Lcom/stbmc/maincontrol/CrashRestorerService$buttonState;

    .line 187
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$400(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/stbmc/maincontrol/CrashRestorerService$4;->this$0:Lcom/stbmc/maincontrol/CrashRestorerService;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CrashRestorerService;->access$300(Lcom/stbmc/maincontrol/CrashRestorerService;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 156
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
