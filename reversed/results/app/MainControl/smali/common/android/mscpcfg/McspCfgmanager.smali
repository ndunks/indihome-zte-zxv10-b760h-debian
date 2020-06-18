.class public Lcommon/android/mscpcfg/McspCfgmanager;
.super Ljava/lang/Object;
.source "McspCfgmanager.java"


# static fields
.field private static final CFG_MSG_LEN:I = 0x1f8

.field private static final CFG_REPLY_LEN:I = 0x400

.field private static final CMD_CFG_CONTAINS:I = 0x40c002

.field private static final CMD_CFG_DOWNLOAD_CONFIG:I = 0x40c010

.field private static final CMD_CFG_PING:I = 0x40c001

.field private static final CMD_CFG_READ_BOOL:I = 0x40c006

.field private static final CMD_CFG_READ_FLOAT:I = 0x40c005

.field private static final CMD_CFG_READ_INT:I = 0x40c004

.field private static final CMD_CFG_READ_STRING:I = 0x40c003

.field private static final CMD_CFG_REGISTER_KEY:I = 0x40c01b

.field private static final CMD_CFG_REMOVEKEY:I = 0x40c00b

.field private static final CMD_CFG_SAVE_CONFIG_TO_FLASH:I = 0x40c01e

.field private static final CMD_CFG_UNREGISTER_KEY:I = 0x40c01c

.field private static final CMD_CFG_UPDATECONFIG:I = 0x40c00f

.field private static final CMD_CFG_WRITE_BOOL:I = 0x40c00a

.field private static final CMD_CFG_WRITE_FLOAT:I = 0x40c009

.field private static final CMD_CFG_WRITE_INT:I = 0x40c008

.field private static final CMD_CFG_WRITE_STRING:I = 0x40c007

.field private static final CONFIG_HANDLE_NAME_LEN:I = 0x64

.field private static final MAX_KEY_LEN:I = 0x40

.field private static final MAX_SECTION_LEN:I = 0x20

.field private static final MAX_VALUE_LEN:I = 0x134

.field private static final MCSP_CFG_ERROR:I = -0x1

.field private static final MCSP_CFG_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CfgJInterface"


# instance fields
.field private compCom:Lcommon/mcspevtmanager/McspCompCommun;

.field private destCompName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "mcspcfg"

    iput-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    return-void
.end method

.method public static byteToInt([B)I
    .locals 4
    .param p0, "bArray"    # [B

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "a":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 748
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_0
    return v0
.end method

.method public static getFloat([B)F
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 777
    const/4 v1, 0x0

    aget-byte v0, p0, v1

    .line 778
    .local v0, "l":I
    and-int/lit16 v0, v0, 0xff

    .line 779
    int-to-long v1, v0

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    long-to-int v0, v1

    .line 780
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 781
    int-to-long v1, v0

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    long-to-int v0, v1

    .line 782
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 783
    int-to-long v1, v0

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    long-to-int v0, v1

    .line 784
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static putFloat([BF)V
    .locals 3
    .param p0, "bb"    # [B
    .param p1, "x"    # F

    .prologue
    .line 798
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 799
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 800
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, p0, v0

    .line 801
    shr-int/lit8 v1, v1, 0x8

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    return-void
.end method

.method public static toFloat([B)F
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "accum":I
    const/4 v1, 0x0

    .local v1, "shiftBy":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 791
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method


# virtual methods
.method public DownLoadConfigIntoFs(Ljava/lang/String;)I
    .locals 10
    .param p1, "szFsFileName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 675
    if-nez p1, :cond_0

    .line 676
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] cfgproxy: in function error arg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 694
    :goto_0
    return v0

    .line 679
    :cond_0
    new-array v5, v1, [B

    .line 680
    .local v5, "bServerResult":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 681
    .local v6, "iServerResultLen":[I
    aput v1, v6, v9

    .line 682
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c010

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 683
    .local v7, "iRet":I
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager]iRet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    if-ne v7, v8, :cond_1

    .line 686
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] cfgproxy:[DownLoadConfigIntoFs]-CC_SyncSend-error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 687
    goto :goto_0

    .line 689
    :cond_1
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] bServerResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v0

    if-gez v0, :cond_2

    .line 691
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownLoadConfigIntoFs error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 692
    goto :goto_0

    :cond_2
    move v0, v9

    .line 694
    goto :goto_0
.end method

.method public GetBytes(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 11
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "defValue"    # [B

    .prologue
    const/16 v1, 0x400

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 287
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 288
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] GetConfigString input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local p3    # "defValue":[B
    :cond_1
    :goto_0
    return-object p3

    .line 291
    .restart local p3    # "defValue":[B
    :cond_2
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 292
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 293
    .local v5, "aReply":[B
    new-array v6, v10, [I

    .line 294
    .local v6, "iReplyLen":[I
    aput v1, v6, v9

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetBytes]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c003

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v8

    .line 301
    .local v8, "iRet":I
    if-eqz v8, :cond_3

    .line 303
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] GetBytes failed, return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    :cond_3
    aget v0, v6, v9

    if-le v0, v10, :cond_1

    .line 310
    aget v0, v6, v9

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [B

    .line 311
    .local v7, "aReturn":[B
    aget v0, v6, v9

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v9, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v7

    .line 312
    goto/16 :goto_0
.end method

.method public GetInteger(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 250
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 251
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] GetInteger input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .line 254
    .restart local p3    # "defValue":I
    :cond_1
    const/4 v8, 0x0

    .line 256
    .local v8, "iResult":I
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 257
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 258
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 259
    .local v6, "iReplyLen":[I
    aput v1, v6, v4

    .line 260
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetInteger]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c004

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v9

    .line 265
    .local v9, "iRet":I
    if-eqz v9, :cond_2

    .line 266
    move v7, p3

    .line 267
    .local v7, "iKeyValue":I
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] :[GetInteger]-MCSP_InvokeService-error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    .end local v7    # "iKeyValue":I
    :cond_2
    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v7

    .line 272
    .restart local v7    # "iKeyValue":I
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] GetInteger: success value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v7

    .line 275
    goto/16 :goto_0
.end method

.method public GetString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 215
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 216
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] GetConfigString input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, p3

    .line 238
    :goto_0
    return-object v8

    .line 219
    :cond_1
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 220
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 221
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 222
    .local v6, "iReplyLen":[I
    aput v1, v6, v4

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetString]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c003

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 230
    .local v7, "iRet":I
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    .line 231
    .local v9, "strReply":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "strData":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 233
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] GetConfigString: value err= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 236
    :cond_2
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] GetConfigString: success value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public PingCfg()I
    .locals 10

    .prologue
    const/4 v0, 0x5

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 55
    new-array v3, v4, [B

    .line 56
    .local v3, "bNullData":[B
    new-array v5, v0, [B

    .line 57
    .local v5, "bReply":[B
    new-array v6, v4, [I

    .line 58
    .local v6, "iReplyLen":[I
    aput v0, v6, v9

    .line 61
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c001

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 63
    .local v7, "iRet":I
    if-ne v7, v8, :cond_0

    .line 65
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error MCSP_InvokeService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 70
    :goto_0
    return v0

    .line 68
    :cond_0
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success MCSP_InvokeService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 70
    goto :goto_0
.end method

.method public RegisterKeyListener(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 570
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 571
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 572
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 574
    .local v6, "iServerResultLen":[I
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 576
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "RegisterKeyListener input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v7, -0x1

    .line 593
    :cond_1
    :goto_0
    return v7

    .line 580
    :cond_2
    aput v1, v6, v4

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RegisterKeyListener]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c01b

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 588
    .local v7, "iRet":I
    if-eqz v7, :cond_1

    .line 590
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RegisterKeyListener]: MCSP_InvokeService-error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public SaveConfigtoFlash()I
    .locals 9

    .prologue
    const/4 v0, 0x5

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 706
    new-array v3, v4, [B

    .line 707
    .local v3, "bNullData":[B
    new-array v5, v0, [B

    .line 708
    .local v5, "bReply":[B
    new-array v6, v4, [I

    .line 709
    .local v6, "iReplyLen":[I
    aput v0, v6, v8

    .line 710
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c01e

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 711
    .local v7, "iRet":I
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] save config to flash return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-eqz v7, :cond_0

    .line 714
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] save config to flash failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, -0x1

    .line 717
    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public UnRegisterKeyListener(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 607
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 608
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 609
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 611
    .local v6, "iServerResultLen":[I
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 613
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "UnRegisterKeyListener input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v7, -0x1

    .line 630
    :cond_1
    :goto_0
    return v7

    .line 617
    :cond_2
    aput v1, v6, v4

    .line 618
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UnRegisterKeyListener]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c01c

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 625
    .local v7, "iRet":I
    if-eqz v7, :cond_1

    .line 627
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UnRegisterKeyListener]: MCSP_InvokeService-error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public UpdateConfigFromFs(Ljava/lang/String;)I
    .locals 10
    .param p1, "szFsFileName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 645
    if-nez p1, :cond_0

    .line 646
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] cfgproxy: in function error arg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 664
    :goto_0
    return v0

    .line 649
    :cond_0
    new-array v5, v1, [B

    .line 650
    .local v5, "bServerResult":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 651
    .local v6, "iServerResultLen":[I
    aput v1, v6, v9

    .line 652
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UpdateConfigFromFs]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", szFsFileName=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c00f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 654
    .local v7, "iRet":I
    if-gez v7, :cond_1

    .line 656
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] cfgproxy:[UpdateConfigFromFs]-CC_SyncSend-error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 657
    goto :goto_0

    .line 659
    :cond_1
    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v0

    if-gez v0, :cond_2

    .line 661
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] cfgproxy:[UpdateConfigFromFs]-error: cfgserver return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 662
    goto :goto_0

    :cond_2
    move v0, v9

    .line 664
    goto :goto_0
.end method

.method public byteTobinary([B)Ljava/lang/String;
    .locals 8
    .param p1, "bs"    # [B

    .prologue
    const/16 v7, 0x8

    .line 761
    const-string v0, "00000000"

    .line 762
    .local v0, "ZERO":Ljava/lang/String;
    const-string v3, ""

    .line 763
    .local v3, "sResult":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 764
    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 766
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 770
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_0

    .line 768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00000000"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 772
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] contains input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 108
    :goto_0
    return v0

    .line 92
    :cond_1
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 93
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 94
    .local v5, "aReply":[B
    new-array v6, v9, [I

    .line 95
    .local v6, "iReplyLen":[I
    aput v1, v6, v8

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v8, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v8, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] : [contains]-arg sending is: cmd=CMD_CFG_CONTAINS, Section = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c002

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 101
    .local v7, "iRet":I
    if-eqz v7, :cond_2

    .line 102
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] : [contains]-MCSP_InvokeService-error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 103
    goto/16 :goto_0

    .line 107
    :cond_2
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] contains:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " have value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 108
    goto/16 :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .prologue
    const/16 v1, 0x400

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 124
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 125
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] getBoolean input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 155
    :goto_0
    return v0

    .line 128
    :cond_1
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 129
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 130
    .local v5, "aReply":[B
    new-array v6, v10, [I

    .line 131
    .local v6, "iReplyLen":[I
    aput v1, v6, v9

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getBoolean]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c006

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v8

    .line 137
    .local v8, "iRet":I
    if-eqz v8, :cond_2

    .line 138
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] [getBoolean]-MCSP_InvokeService-error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 139
    goto/16 :goto_0

    .line 143
    :cond_2
    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v7

    .line 144
    .local v7, "iKeyValue":I
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] getBoolean: success value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez v7, :cond_3

    move v0, v9

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_3
    if-ne v10, v7, :cond_4

    move v0, v10

    .line 151
    goto/16 :goto_0

    :cond_4
    move v0, v10

    .line 155
    goto/16 :goto_0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 11
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "defValue"    # F

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 168
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 169
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] getFloat input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local p3    # "defValue":F
    :goto_0
    return p3

    .line 172
    .restart local p3    # "defValue":F
    :cond_1
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 173
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 174
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 175
    .local v6, "iReplyLen":[I
    aput v1, v6, v4

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFloat]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c005

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v8

    .line 182
    .local v8, "iRet":I
    if-eqz v8, :cond_2

    .line 183
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] cfgproxy:[getFloat]-CC_SyncSend-error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    :cond_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 189
    .local v10, "strReply":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "strData":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 191
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] getFloat: value err= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :cond_3
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] getFloat: success value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->toFloat([B)F

    move-result v7

    .line 200
    .local v7, "fKeyValue":F
    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->toFloat([B)F

    move-result v7

    move p3, v7

    .line 201
    goto/16 :goto_0
.end method

.method public intToByte(I)[B
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 730
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 731
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 732
    new-instance v2, Ljava/lang/Integer;

    and-int/lit16 v3, p1, 0xff

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 733
    shr-int/lit8 p1, p1, 0x8

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :cond_0
    return-object v0
.end method

.method public newComoCommun(Lcommon/mcspevtmanager/McspCompCommun;)V
    .locals 0
    .param p1, "compCom"    # Lcommon/mcspevtmanager/McspCompCommun;

    .prologue
    .line 42
    iput-object p1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    .line 43
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 11
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "szValue"    # Z

    .prologue
    const/16 v1, 0x400

    const/16 v10, 0x60

    const/4 v4, 0x0

    .line 359
    const-string v9, "true"

    .line 360
    .local v9, "sTrue":Ljava/lang/String;
    const-string v8, "false"

    .line 361
    .local v8, "sFalse":Ljava/lang/String;
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 362
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 363
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 364
    .local v6, "iServerResultLen":[I
    if-nez p1, :cond_1

    .line 365
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] putBoolean input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v7, -0x1

    .line 388
    :cond_0
    :goto_0
    return v7

    .line 368
    :cond_1
    aput v1, v6, v4

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    if-eqz p3, :cond_2

    .line 373
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    :goto_1
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x194

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putBoolean]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", szValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c00a

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 382
    .local v7, "iRet":I
    if-eqz v7, :cond_0

    .line 384
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager]:[putBoolean]-MCSP_InvokeService-error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    .end local v7    # "iRet":I
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public putBytes(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 11
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "szValue"    # [B

    .prologue
    .line 526
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 527
    .local v3, "szData":[B
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 528
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 530
    .local v6, "iServerResultLen":[I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 531
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] putString input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, -0x1

    .line 557
    :goto_0
    return v0

    .line 534
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x400

    aput v1, v6, v0

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    const/4 v0, 0x0

    const/16 v1, 0x60

    array-length v2, p3

    invoke-static {p3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x194

    iget-object v4, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v4}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p3}, Ljava/lang/String;-><init>([B)V

    .line 540
    .local v10, "strValue":Ljava/lang/String;
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putBytes]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", strValue=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strValue length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "szValue length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c007

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 544
    .local v7, "iRet":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    .line 546
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] cfgproxy:[putStringUsingBytes]-CC_SyncSend-error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v0, -0x2

    goto/16 :goto_0

    .line 550
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    .line 551
    .local v9, "strReply":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 552
    .local v8, "sRetValue":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 554
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] cfgproxy:[putStringUsingBytes]: cfgserver return error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, -0x3

    goto/16 :goto_0

    .line 557
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public putFloat(Ljava/lang/String;Ljava/lang/String;F)I
    .locals 10
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "szValue"    # F

    .prologue
    const/16 v1, 0x400

    const/4 v9, 0x4

    const/4 v4, 0x0

    .line 404
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 405
    .local v3, "szData":[B
    new-array v8, v9, [B

    .line 406
    .local v8, "szDataTemp":[B
    new-array v5, v1, [B

    .line 407
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 408
    .local v6, "iServerResultLen":[I
    if-nez p1, :cond_1

    .line 409
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] putFloat input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v7, -0x1

    .line 426
    :cond_0
    :goto_0
    return v7

    .line 412
    :cond_1
    aput v1, v6, v4

    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-static {v8, p3}, Lcommon/android/mscpcfg/McspCfgmanager;->putFloat([BF)V

    .line 416
    const/16 v0, 0x60

    invoke-static {v8, v4, v3, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x194

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putFloat]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", szValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c009

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 420
    .local v7, "iRet":I
    if-eqz v7, :cond_0

    .line 422
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager]:[putFloat]-MCSP_InvokeService-error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public putInteger(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "iValue"    # I

    .prologue
    const/16 v1, 0x400

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 443
    const/4 v7, 0x0

    .line 444
    .local v7, "iResult":I
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 445
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 446
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 447
    .local v6, "iServerResultLen":[I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 448
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] SetConfigInteger input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 469
    :goto_0
    return v0

    .line 451
    :cond_1
    aput v1, v6, v10

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v10, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v10, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    invoke-virtual {p0, p3}, Lcommon/android/mscpcfg/McspCfgmanager;->intToByte(I)[B

    move-result-object v0

    const/16 v1, 0x60

    invoke-virtual {p0, p3}, Lcommon/android/mscpcfg/McspCfgmanager;->intToByte(I)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v10, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x194

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v10, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putInteger]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c008

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v8

    .line 458
    .local v8, "iRet":I
    if-ne v8, v9, :cond_2

    .line 460
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] cfgproxy:[putInteger]-CC_SyncSend-error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 461
    goto/16 :goto_0

    .line 463
    :cond_2
    invoke-static {v5}, Lcommon/android/mscpcfg/McspCfgmanager;->byteToInt([B)I

    move-result v7

    .line 464
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] cfgproxy:[putInteger] cfgserver return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-gez v7, :cond_3

    .line 466
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] cfgproxy:[putInteger]-succer: cfgserver return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_3
    move v0, v10

    .line 469
    goto/16 :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;
    .param p3, "szValue"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 484
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 485
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 486
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 487
    .local v6, "iServerResultLen":[I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 488
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] putString input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 512
    :goto_0
    return v0

    .line 491
    :cond_1
    aput v1, v6, v10

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v10, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v10, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v10, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x194

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v10, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[putString]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", szValue=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c007

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 498
    .local v7, "iRet":I
    if-ne v7, v11, :cond_2

    .line 500
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] cfgproxy:[putString]-CC_SyncSend-error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, -0x2

    goto/16 :goto_0

    .line 504
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    .line 505
    .local v9, "strReply":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 507
    .local v8, "sRetValue":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 509
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] cfgproxy:[putString]: cfgserver return error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, -0x3

    goto/16 :goto_0

    :cond_3
    move v0, v10

    .line 512
    goto/16 :goto_0
.end method

.method public removeKey(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "szKey"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 322
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 323
    :cond_0
    const-string v0, "CfgJInterface"

    const-string v1, "[Cfgmanager] removeKey input parameter err!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v7, -0x1

    .line 340
    :cond_1
    :goto_0
    return v7

    .line 326
    :cond_2
    const/16 v0, 0x440

    new-array v3, v0, [B

    .line 327
    .local v3, "szData":[B
    new-array v5, v1, [B

    .line 328
    .local v5, "aReply":[B
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 329
    .local v6, "iReplyLen":[I
    aput v1, v6, v4

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v0}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x60

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeKey]: Component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    invoke-virtual {v2}, Lcommon/mcspevtmanager/McspCompCommun;->getComName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Section="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcommon/android/mscpcfg/McspCfgmanager;->compCom:Lcommon/mcspevtmanager/McspCompCommun;

    iget-object v1, p0, Lcommon/android/mscpcfg/McspCfgmanager;->destCompName:Ljava/lang/String;

    const v2, 0x40c00b

    array-length v4, v3

    invoke-virtual/range {v0 .. v6}, Lcommon/mcspevtmanager/McspCompCommun;->MCSP_InvokeService(Ljava/lang/String;I[BI[B[I)I

    move-result v7

    .line 335
    .local v7, "iRet":I
    if-eqz v7, :cond_1

    .line 336
    const-string v0, "CfgJInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cfgmanager] :[removeKey]-MCSP_InvokeService-error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
