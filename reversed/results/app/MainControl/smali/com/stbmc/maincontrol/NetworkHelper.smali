.class public Lcom/stbmc/maincontrol/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field private static final ETHERNET_SERVICE:Ljava/lang/String; = "ethernet"

.field private static final MC_NET_FAIL_NO_WIRE:I = 0x76

.field private static final MC_NET_FAIL_NO_WIRELESS_CARD:I = 0x75

.field private static final NET_HARDWARE_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkHelper"

.field private static connectEthernetMethod:Ljava/lang/reflect/Method;

.field private static getCableLinkMethod:Ljava/lang/reflect/Method;

.field private static getNetLinkStatusMethod:Ljava/lang/reflect/Method;

.field private static mAppContext:Landroid/content/Context;

.field private static mEthMgrClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static releaseEthernetMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mEthMgr:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sput-object p1, Lcom/stbmc/maincontrol/NetworkHelper;->mAppContext:Landroid/content/Context;

    .line 27
    const-string v0, "NetworkHelper"

    const-string v1, "NetworkHelper constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lcom/stbmc/maincontrol/NetworkHelper;->initNet()V

    .line 29
    return-void
.end method

.method private initNet()V
    .locals 5

    .prologue
    .line 117
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 122
    const/4 v1, 0x1

    .line 124
    .local v1, "notNetworkConstruct":Z
    :try_start_0
    const-string v2, "android.net.ethernet.EthernetManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    if-nez v1, :cond_0

    .line 132
    :try_start_1
    const-string v2, "android.net.EthernetManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .end local v1    # "notNetworkConstruct":Z
    :cond_0
    iget-object v2, p0, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgr:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 141
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mAppContext:Landroid/content/Context;

    const-string v3, "ethernet"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgr:Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgr:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    const-string v2, "NetworkHelper"

    const-string v3, "mEthMgr instanceof mEthMgrClass"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    :goto_1
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->connectEthernetMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 151
    :try_start_2
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;

    const-string v3, "connectEthernet"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->connectEthernetMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 158
    :cond_2
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->releaseEthernetMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 160
    :try_start_3
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;

    const-string v3, "releaseEthernet"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->releaseEthernetMethod:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    :cond_3
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->getNetLinkStatusMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    .line 169
    :try_start_4
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;

    const-string v3, "getNetLinkStatus"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->getNetLinkStatusMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 176
    :cond_4
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->getCableLinkMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    .line 178
    :try_start_5
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgrClass:Ljava/lang/Class;

    const-string v3, "getCableLink"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->getCableLinkMethod:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 184
    :cond_5
    :goto_2
    return-void

    .line 125
    .restart local v1    # "notNetworkConstruct":Z
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "NetworkHelper"

    const-string v3, "Can not found class android.net.ethernet.EthernetManager in Android 5.1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 145
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "notNetworkConstruct":Z
    :cond_6
    const-string v2, "NetworkHelper"

    const-string v3, "mEthMgr not instanceof mEthMgrClass"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 162
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public invoke(I[BI[B[I)I
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "aData"    # [B
    .param p3, "dataLen"    # I
    .param p4, "aReply"    # [B
    .param p5, "aReplyLen"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 72
    const-string v3, "NetworkHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 113
    const/4 v3, -0x1

    :goto_0
    return v3

    .line 76
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 78
    .local v2, "status":Ljava/lang/Boolean;
    :try_start_0
    sget-object v3, Lcom/stbmc/maincontrol/NetworkHelper;->getNetLinkStatusMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgr:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    const-string v3, "NetworkHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_STBMC_ETH_CONNECT_STATE status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    aput-byte v7, p4, v4

    .line 89
    :goto_2
    aput v7, p5, v4

    move v3, v4

    .line 90
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    aput-byte v4, p4, v4

    goto :goto_2

    .line 94
    .end local v2    # "status":Ljava/lang/Boolean;
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 96
    .restart local v2    # "status":Ljava/lang/Boolean;
    :try_start_1
    sget-object v3, Lcom/stbmc/maincontrol/NetworkHelper;->getCableLinkMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgr:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_3
    const-string v3, "NetworkHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_STBMC_NA_DETECTNETLINK status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    aput-byte v4, p4, v4

    .line 106
    :goto_4
    aput v7, p5, v4

    move v3, v4

    .line 107
    goto :goto_0

    .line 97
    :catch_1
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v3, 0x76

    aput-byte v3, p4, v4

    goto :goto_4

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1405012
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notify(I[BI)Z
    .locals 5
    .param p1, "eventId"    # I
    .param p2, "aData"    # [B
    .param p3, "dataLen"    # I

    .prologue
    const/4 v1, 0x1

    .line 35
    const-string v2, "NetworkHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify eventId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0}, Lcom/stbmc/maincontrol/NetworkHelper;->initNet()V

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 67
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 42
    :pswitch_1
    :try_start_0
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->connectEthernetMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgr:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    sget-object v2, Lcom/stbmc/maincontrol/NetworkHelper;->releaseEthernetMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/stbmc/maincontrol/NetworkHelper;->mEthMgr:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x140801b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
