.class public Lcom/zte/wifi/wifi_config;
.super Ljava/lang/Object;
.source "wifi_config.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "wifi_config"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWifiConfig()I
    .locals 3

    .prologue
    .line 21
    iget-object v2, p0, Lcom/zte/wifi/wifi_config;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 25
    :goto_0
    return v2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/zte/wifi/wifi_config;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method
