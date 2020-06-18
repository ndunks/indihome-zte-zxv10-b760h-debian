.class public Lcom/stbmc/maincontrol/DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "stbconfig"

.field private static final DATABASE_NAME:Ljava/lang/String; = "summary.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "stbinfo"

.field private static compCom:Lcommon/mcspevtmanager/McspCompCommun;


# instance fields
.field public AuthURL:Ljava/lang/String;

.field public IP:Ljava/lang/String;

.field public LastchannelNum:Ljava/lang/String;

.field public MAC:Ljava/lang/String;

.field public PlatformName:Ljava/lang/String;

.field public Reserved:Ljava/lang/String;

.field public STBID:Ljava/lang/String;

.field public STBType:Ljava/lang/String;

.field public SoftwareVersion:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public UserID:Ljava/lang/String;

.field public UserPassword:Ljava/lang/String;

.field public UserToken:Ljava/lang/String;

.field private cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string v0, "summary.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    const-string v0, "MyContentProvider"

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->AuthURL:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->STBID:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->IP:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->MAC:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->UserID:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->UserPassword:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->UserToken:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->LastchannelNum:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->STBType:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->SoftwareVersion:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->Reserved:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->PlatformName:Ljava/lang/String;

    .line 57
    new-instance v0, Lcommon/android/mscpcfg/McspCfgmanager;

    invoke-direct {v0}, Lcommon/android/mscpcfg/McspCfgmanager;-><init>()V

    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    .line 64
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/DbHelper;->Comp_init()V

    .line 65
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/DbHelper;->Init_Stb_Info()V

    .line 69
    return-void
.end method


# virtual methods
.method public Comp_init()V
    .locals 5

    .prologue
    .line 73
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "compName":Ljava/lang/String;
    new-instance v2, Lcommon/mcspevtmanager/McspCompCommun;

    invoke-direct {v2, v0}, Lcommon/mcspevtmanager/McspCompCommun;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/stbmc/maincontrol/DbHelper;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    .line 75
    sget-object v2, Lcom/stbmc/maincontrol/DbHelper;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    const-string v3, "----------> compCom null error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v2, Lcom/stbmc/maincontrol/DbHelper;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_SrvEvt_Init()I

    move-result v1

    .line 81
    .local v1, "ret":I
    if-gez v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCSP_SrvEvt_Init error! ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCSP_SrvEvt_Init success! ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    sget-object v3, Lcom/stbmc/maincontrol/DbHelper;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2, v3}, Lcommon/android/mscpcfg/McspCfgmanager;->newComoCommun(Lcommon/mcspevtmanager/McspCompCommun;)V

    goto :goto_0
.end method

.method Init_Stb_Info()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 96
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const-string v9, "Common"

    const-string v10, "HomePage"

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->AuthURL:Ljava/lang/String;

    .line 97
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const-string v9, "Common"

    const-string v10, "ProductID"

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->STBID:Ljava/lang/String;

    .line 98
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const-string v9, "Common"

    const-string v10, "IpAddr"

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->IP:Ljava/lang/String;

    .line 99
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const-string v9, "Common"

    const-string v10, "MacAddr"

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->MAC:Ljava/lang/String;

    .line 100
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const-string v9, "Common"

    const-string v10, "ServiceUser"

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->UserID:Ljava/lang/String;

    .line 101
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->cfgmanager:Lcommon/android/mscpcfg/McspCfgmanager;

    const-string v9, "Common"

    const-string v10, "ServicePwd"

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcommon/android/mscpcfg/McspCfgmanager;->GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->UserPassword:Ljava/lang/String;

    .line 102
    const-string v8, "0"

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->UserToken:Ljava/lang/String;

    .line 103
    const-string v8, "0"

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->LastchannelNum:Ljava/lang/String;

    .line 106
    const-string v8, "0"

    iput-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->Reserved:Ljava/lang/String;

    .line 107
    const-string v0, ""

    .line 108
    .local v0, "DeviceType":Ljava/lang/String;
    const-string v6, ""

    .line 110
    .local v6, "swinfo":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/etc/ver.inf"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v5, "swin":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 113
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "line":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, "i":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "value":Ljava/lang/String;
    iput-object v7, p0, Lcom/stbmc/maincontrol/DbHelper;->SoftwareVersion:Ljava/lang/String;

    .line 119
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "swinfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " SoftwareVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/stbmc/maincontrol/DbHelper;->SoftwareVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v8, "Software"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v12, :cond_0

    .line 126
    const-string v8, "V711"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v12, :cond_1

    .line 127
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    const-string v9, "V711"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "B700V2D"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "swin":Ljava/io/BufferedReader;
    .end local v7    # "value":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Lcom/stbmc/maincontrol/DbHelper;->STBType:Ljava/lang/String;

    .line 155
    return-void

    .line 129
    .restart local v2    # "i":I
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "swin":Ljava/io/BufferedReader;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v8, "V728"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 130
    const-string v0, "B760D"

    goto :goto_0

    .line 131
    :cond_2
    const-string v8, "V719"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v12, :cond_3

    .line 132
    const-string v0, "B700V2E"

    goto :goto_0

    .line 133
    :cond_3
    const-string v8, "V729"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v12, :cond_4

    .line 134
    const-string v0, "B760E"

    goto :goto_0

    .line 136
    :cond_4
    const-string v0, "B700V2D"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 147
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    .end local v5    # "swin":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    const-string v9, "IOException when read "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 166
    iget-object v2, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    const-string v3, "onCreate in dbHelper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v0, "create table stbinfo (ID integer primary key,AuthURL text,STBID text,IP text,MAC text,UserID text,UserPassword text,UserToken text,LastchannelNum text,Reserved text,STBType text,SoftwareVersion text,PlatformName text);"

    .line 185
    .local v0, "sql":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert into stbinfo values(0,\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->AuthURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->STBID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->IP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->MAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->UserID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->UserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->UserToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->LastchannelNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->Reserved:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->STBType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->SoftwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stbmc/maincontrol/DbHelper;->PlatformName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "sql_insert":Ljava/lang/String;
    iget-object v2, p0, Lcom/stbmc/maincontrol/DbHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sql="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sql_insert="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 207
    const-string v0, "drop table if exits student"

    .line 209
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    return-void
.end method
