.class public Lzte/mcsp/MCSPLog;
.super Ljava/lang/Object;
.source "MCSPLog.java"


# static fields
.field private static final ERRID_LEN:I = 0x80

.field private static final MCSPLOG_EVT_ERRLOG:I = 0x448102

.field public static final TAG:Ljava/lang/String; = "MCSPLog"

.field private static final TIMESTR_LEN:I = 0x20

.field public static final destCompName:Ljava/lang/String; = "MCSP_LogServer"

.field static m_iLogLevel:I


# instance fields
.field private compCom:Lcommon/mcspevtmanager/McspCompCommun;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/mcsp/MCSPLog;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "sTag"    # Ljava/lang/String;
    .param p1, "sLogInfo"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public static e(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p0, "sTag"    # Ljava/lang/String;
    .param p1, "errorcode"    # I
    .param p2, "sLogInfo"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v1, "MCSP-ErrorCode:%d,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "sErr":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public static getLevel()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lzte/mcsp/MCSPLog;->m_iLogLevel:I

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "sTag"    # Ljava/lang/String;
    .param p1, "sLogInfo"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public static setLevel(I)V
    .locals 0
    .param p0, "iLevel"    # I

    .prologue
    .line 59
    sput p0, Lzte/mcsp/MCSPLog;->m_iLogLevel:I

    .line 60
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "sTag"    # Ljava/lang/String;
    .param p1, "sLogInfo"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method


# virtual methods
.method public MCSP_LOGEL(I)I
    .locals 9
    .param p1, "ErrLogCode"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    const/16 v4, 0xa0

    new-array v3, v4, [B

    .line 31
    .local v3, "szData":[B
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "s_ErrC":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 34
    .local v0, "date":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%tY"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tm"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%td"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tH"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    .line 35
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tM"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tS"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "date_s":Ljava/lang/String;
    const-string v4, "MCSPLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCSP_LOGEL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v4, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v4, p0, Lzte/mcsp/MCSPLog;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v5, 0x448102

    array-length v6, v3

    invoke-virtual {v4, v5, v3, v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    move-result v4

    return v4
.end method

.method public MCSP_LOGELS(Ljava/lang/String;I)I
    .locals 9
    .param p1, "ErrLogStrCode"    # Ljava/lang/String;
    .param p2, "strLen"    # I

    .prologue
    const/16 v3, 0x80

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 43
    const/16 v4, 0xa0

    new-array v2, v4, [B

    .line 44
    .local v2, "szData":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    if-le v3, p2, :cond_0

    .end local p2    # "strLen":I
    :goto_0
    invoke-static {v4, v7, v2, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    .local v0, "date":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%tY"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tm"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%td"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tH"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    .line 47
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tM"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%tS"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "date_s":Ljava/lang/String;
    const-string v4, "MCSPLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCSP_LOGELS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v7, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v3, p0, Lzte/mcsp/MCSPLog;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    const v4, 0x448102

    array-length v5, v2

    invoke-virtual {v3, v4, v2, v5}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_EVTPost(I[BI)I

    move-result v3

    return v3

    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "date_s":Ljava/lang/String;
    .restart local p2    # "strLen":I
    :cond_0
    move p2, v3

    .line 44
    goto/16 :goto_0
.end method

.method public newComoCommun(Lcommon/mcspevtmanager/McspCompCommun;)V
    .locals 0
    .param p1, "compCom"    # Lcommon/mcspevtmanager/McspCompCommun;

    .prologue
    .line 25
    iput-object p1, p0, Lzte/mcsp/MCSPLog;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    .line 26
    return-void
.end method
