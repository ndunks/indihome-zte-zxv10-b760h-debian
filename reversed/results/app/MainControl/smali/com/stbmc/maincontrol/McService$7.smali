.class Lcom/stbmc/maincontrol/McService$7;
.super Ljava/lang/Object;
.source "McService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/McService;->Wifi_Scan_Thread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/McService;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/McService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/McService;

    .prologue
    .line 5148
    iput-object p1, p0, Lcom/stbmc/maincontrol/McService$7;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 5152
    const/4 v1, 0x1

    .line 5153
    .local v1, "a":I
    const/4 v0, 0x0

    .line 5156
    .local v0, "IsApList":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 5159
    const-wide/16 v7, 0x4e20

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5164
    :goto_1
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6000()Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 5165
    .local v5, "wifiEnable":I
    const-string v7, "net.zte.wifi.netstate"

    const-string v8, " "

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5166
    .local v6, "wifiState":Ljava/lang/String;
    const-string v7, "CONNECTED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5168
    const-string v7, "net.zte.eth.netstate"

    const-string v8, " "

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5169
    .local v3, "ethState":Ljava/lang/String;
    const-string v7, "CONNECTED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5171
    const/4 v7, 0x1

    if-ne v7, v0, :cond_2

    .line 5173
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6000()Landroid/net/wifi/WifiManager;

    if-ne v5, v9, :cond_3

    .line 5174
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6000()Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 5175
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5177
    :cond_1
    const-string v7, "MAIN_CONTROL"

    const-string v8, "No wifi AP in list!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5178
    iget-object v7, p0, Lcom/stbmc/maincontrol/McService$7;->this$0:Lcom/stbmc/maincontrol/McService;

    invoke-static {v7}, Lcom/stbmc/maincontrol/McService;->access$6100(Lcom/stbmc/maincontrol/McService;)V

    .line 5179
    const/4 v1, 0x0

    .line 5188
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6000()Landroid/net/wifi/WifiManager;

    if-ne v5, v9, :cond_0

    .line 5190
    invoke-static {}, Lcom/stbmc/maincontrol/McService;->access$6000()Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5192
    const/4 v0, 0x1

    .line 5193
    const-string v7, "MAIN_CONTROL"

    const-string v8, "mWifiManager.startScan success!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5160
    .end local v3    # "ethState":Ljava/lang/String;
    .end local v5    # "wifiEnable":I
    .end local v6    # "wifiState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5162
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 5182
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "ethState":Ljava/lang/String;
    .restart local v5    # "wifiEnable":I
    .restart local v6    # "wifiState":Ljava/lang/String;
    :cond_3
    const-string v7, "MAIN_CONTROL"

    const-string v8, "wifi unable"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5183
    const/4 v0, 0x0

    .line 5184
    goto :goto_0

    .line 5197
    :cond_4
    const-string v7, "MAIN_CONTROL"

    const-string v8, "mWifiManager.startScan failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5201
    .end local v3    # "ethState":Ljava/lang/String;
    .end local v5    # "wifiEnable":I
    .end local v6    # "wifiState":Ljava/lang/String;
    :cond_5
    return-void
.end method
