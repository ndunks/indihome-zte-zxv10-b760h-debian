.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x1e

    const/4 v5, -0x1

    .line 116
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 123
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 127
    new-array v2, v4, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 128
    new-array v2, v4, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 130
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Cp437"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM437"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING_NAMES:Ljava/util/List;

    .line 137
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 139
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    .line 140
    .local v0, "b":B
    if-lez v0, :cond_0

    .line 141
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aput-byte v1, v2, v0

    .line 138
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    .line 144
    .end local v0    # "b":B
    :cond_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 145
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 146
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    .line 147
    .restart local v0    # "b":B
    if-lez v0, :cond_2

    .line 148
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aput-byte v1, v2, v0

    .line 145
    :cond_2
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_1

    .line 151
    .end local v0    # "b":B
    :cond_3
    return-void

    .line 116
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 123
    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .locals 10
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "startpos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3f

    const/16 v8, 0xd

    const/4 v7, 0x5

    .line 557
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 558
    .local v3, "len":I
    move v2, p2

    .line 559
    .local v2, "idx":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 560
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 561
    .local v0, "ch":C
    const/4 v4, 0x0

    .line 563
    .local v4, "numericCount":I
    :goto_1
    if-ge v4, v8, :cond_0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 564
    add-int/lit8 v4, v4, 0x1

    .line 566
    add-int v1, v2, v4

    .line 567
    .local v1, "i":I
    if-lt v1, v3, :cond_1

    .line 572
    .end local v1    # "i":I
    :cond_0
    if-lt v4, v8, :cond_2

    .line 573
    sub-int v6, v2, p2

    .line 597
    .end local v0    # "ch":C
    .end local v4    # "numericCount":I
    :goto_2
    return v6

    .line 570
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    .restart local v4    # "numericCount":I
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 571
    goto :goto_1

    .line 575
    .end local v1    # "i":I
    :cond_2
    const/4 v5, 0x0

    .line 576
    .local v5, "textCount":I
    :goto_3
    if-ge v5, v7, :cond_3

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 577
    add-int/lit8 v5, v5, 0x1

    .line 578
    add-int v1, v2, v5

    .line 579
    .restart local v1    # "i":I
    if-lt v1, v3, :cond_4

    .line 584
    .end local v1    # "i":I
    :cond_3
    if-lt v5, v7, :cond_5

    .line 585
    sub-int v6, v2, p2

    goto :goto_2

    .line 582
    .restart local v1    # "i":I
    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 583
    goto :goto_3

    .line 587
    .end local v1    # "i":I
    :cond_5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 592
    aget-byte v6, p1, v2

    if-ne v6, v9, :cond_6

    if-eq v0, v9, :cond_6

    .line 593
    new-instance v6, Lcom/google/zxing/WriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-encodable character detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (Unicode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 595
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 596
    goto :goto_0

    .line 597
    .end local v0    # "ch":C
    .end local v4    # "numericCount":I
    .end local v5    # "textCount":I
    :cond_7
    sub-int v6, v2, p2

    goto :goto_2
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 495
    .local v3, "len":I
    move v2, p1

    .line 496
    .local v2, "idx":I
    if-ge v2, v3, :cond_1

    .line 497
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 498
    .local v0, "ch":C
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v3, :cond_1

    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    add-int/lit8 v2, v2, 0x1

    .line 501
    if-ge v2, v3, :cond_0

    .line 502
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 506
    .end local v0    # "ch":C
    :cond_1
    return v1
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    const/16 v5, 0xd

    .line 517
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 518
    .local v2, "len":I
    move v1, p1

    .line 519
    .local v1, "idx":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_4

    .line 520
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 521
    .local v0, "ch":C
    const/4 v3, 0x0

    .line 522
    .local v3, "numericCount":I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_2

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v1, v2, :cond_2

    .line 523
    add-int/lit8 v3, v3, 0x1

    .line 524
    add-int/lit8 v1, v1, 0x1

    .line 525
    if-ge v1, v2, :cond_1

    .line 526
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 529
    :cond_2
    if-lt v3, v5, :cond_3

    .line 530
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    .line 544
    .end local v0    # "ch":C
    .end local v3    # "numericCount":I
    :goto_2
    return v4

    .line 532
    .restart local v0    # "ch":C
    .restart local v3    # "numericCount":I
    :cond_3
    if-gtz v3, :cond_0

    .line 536
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 539
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-nez v4, :cond_5

    .line 544
    .end local v0    # "ch":C
    .end local v3    # "numericCount":I
    :cond_4
    sub-int v4, v1, p1

    goto :goto_2

    .line 542
    .restart local v0    # "ch":C
    .restart local v3    # "numericCount":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 543
    goto :goto_0
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 399
    const/4 v7, 0x1

    if-ne p2, v7, :cond_0

    if-nez p3, :cond_0

    .line 400
    const/16 v7, 0x391

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    :goto_0
    move v3, p1

    .line 412
    .local v3, "idx":I
    const/4 v7, 0x6

    if-lt p2, v7, :cond_6

    .line 413
    const/4 v7, 0x5

    new-array v1, v7, [C

    .line 414
    .local v1, "chars":[C
    :goto_1
    add-int v7, p1, p2

    sub-int/2addr v7, v3

    const/4 v8, 0x6

    if-lt v7, v8, :cond_6

    .line 415
    const-wide/16 v5, 0x0

    .line 416
    .local v5, "t":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v7, 0x6

    if-ge v2, v7, :cond_3

    .line 417
    const/16 v7, 0x8

    shl-long/2addr v5, v7

    .line 418
    add-int v7, v3, v2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 402
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    .end local v3    # "idx":I
    .end local v5    # "t":J
    :cond_0
    rem-int/lit8 v7, p2, 0x6

    if-nez v7, :cond_1

    const/4 v4, 0x1

    .line 403
    .local v4, "sixpack":Z
    :goto_3
    if-eqz v4, :cond_2

    .line 404
    const/16 v7, 0x39c

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 402
    .end local v4    # "sixpack":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    .line 406
    .restart local v4    # "sixpack":Z
    :cond_2
    const/16 v7, 0x385

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    .end local v4    # "sixpack":Z
    .restart local v1    # "chars":[C
    .restart local v2    # "i":I
    .restart local v3    # "idx":I
    .restart local v5    # "t":J
    :cond_3
    const/4 v2, 0x0

    :goto_4
    const/4 v7, 0x5

    if-ge v2, v7, :cond_4

    .line 421
    const-wide/16 v7, 0x384

    rem-long v7, v5, v7

    long-to-int v7, v7

    int-to-char v7, v7

    aput-char v7, v1, v2

    .line 422
    const-wide/16 v7, 0x384

    div-long/2addr v5, v7

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 424
    :cond_4
    array-length v7, v1

    add-int/lit8 v2, v7, -0x1

    :goto_5
    if-ltz v2, :cond_5

    .line 425
    aget-char v7, v1, v2

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 427
    :cond_5
    add-int/lit8 v3, v3, 0x6

    .line 428
    goto :goto_1

    .line 431
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    .end local v5    # "t":J
    :cond_6
    move v2, v3

    .restart local v2    # "i":I
    :goto_6
    add-int v7, p1, p2

    if-ge v2, v7, :cond_7

    .line 432
    aget-byte v7, p0, v2

    and-int/lit16 v0, v7, 0xff

    .line 433
    .local v0, "ch":I
    int-to-char v7, v0

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 435
    .end local v0    # "ch":I
    :cond_7
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "compaction"    # Lcom/google/zxing/pdf417/encoder/Compaction;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v7, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    sget-object v10, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING_NAMES:Ljava/util/List;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .line 171
    .local v2, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v10

    invoke-static {v10, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 176
    .end local v2    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 177
    .local v4, "len":I
    const/4 v6, 0x0

    .line 178
    .local v6, "p":I
    const/4 v9, 0x0

    .line 181
    .local v9, "textSubMode":I
    const/4 v1, 0x0

    .line 182
    .local v1, "bytes":[B
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_2

    .line 183
    invoke-static {p0, v6, v4, v7, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 236
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 185
    :cond_2
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_3

    .line 186
    invoke-static {p0, p2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->toBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 187
    array-length v10, v1

    const/4 v11, 0x1

    invoke-static {v1, v6, v10, v11, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 189
    :cond_3
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_4

    .line 190
    const/16 v10, 0x386

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p0, v6, v4, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 194
    :cond_4
    const/4 v3, 0x0

    .line 195
    .local v3, "encodingMode":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 196
    invoke-static {p0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 197
    .local v5, "n":I
    const/16 v10, 0xd

    if-lt v5, v10, :cond_5

    .line 198
    const/16 v10, 0x386

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const/4 v3, 0x2

    .line 200
    const/4 v9, 0x0

    .line 201
    invoke-static {p0, v6, v5, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 202
    add-int/2addr v6, v5

    goto :goto_1

    .line 204
    :cond_5
    invoke-static {p0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 205
    .local v8, "t":I
    const/4 v10, 0x5

    if-ge v8, v10, :cond_6

    if-ne v5, v4, :cond_8

    .line 206
    :cond_6
    if-eqz v3, :cond_7

    .line 207
    const/16 v10, 0x384

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const/4 v3, 0x0

    .line 209
    const/4 v9, 0x0

    .line 211
    :cond_7
    invoke-static {p0, v6, v8, v7, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v9

    .line 212
    add-int/2addr v6, v8

    goto :goto_1

    .line 214
    :cond_8
    if-nez v1, :cond_9

    .line 215
    invoke-static {p0, p2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->toBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 217
    :cond_9
    invoke-static {p0, v1, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v0

    .line 218
    .local v0, "b":I
    if-nez v0, :cond_a

    .line 219
    const/4 v0, 0x1

    .line 221
    :cond_a
    const/4 v10, 0x1

    if-ne v0, v10, :cond_b

    if-nez v3, :cond_b

    .line 223
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v1, v6, v10, v11, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 230
    :goto_2
    add-int/2addr v6, v0

    goto :goto_1

    .line 226
    :cond_b
    invoke-static {v1, v6, v0, v3, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 227
    const/4 v3, 0x1

    .line 228
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 438
    const/4 v2, 0x0

    .line 439
    .local v2, "idx":I
    new-instance v7, Ljava/lang/StringBuilder;

    div-int/lit8 v8, p2, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    .local v7, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x384

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 441
    .local v5, "num900":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 442
    .local v4, "num0":Ljava/math/BigInteger;
    :goto_0
    add-int/lit8 v8, p2, -0x1

    if-ge v2, v8, :cond_2

    .line 443
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 444
    const/16 v8, 0x2c

    sub-int v9, p2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 445
    .local v3, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x31

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, p1, v2

    add-int v10, p1, v2

    add-int/2addr v10, v3

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, "part":Ljava/lang/String;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "bigint":Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 453
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 454
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 456
    :cond_1
    add-int/2addr v2, v3

    .line 457
    goto :goto_0

    .line 458
    .end local v0    # "bigint":Ljava/math/BigInteger;
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v6    # "part":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 11
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "initialSubmode"    # I

    .prologue
    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v8, "tmp":Ljava/lang/StringBuilder;
    move v7, p4

    .line 275
    .local v7, "submode":I
    const/4 v3, 0x0

    .line 277
    .local v3, "idx":I
    :cond_0
    :goto_0
    add-int v9, p1, v3

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 278
    .local v0, "ch":C
    packed-switch v7, :pswitch_data_0

    .line 353
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 354
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 362
    if-lt v3, p2, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "h":C
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 368
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_10

    .line 369
    rem-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_e

    const/4 v6, 0x1

    .line 370
    .local v6, "odd":Z
    :goto_3
    if-eqz v6, :cond_f

    .line 371
    mul-int/lit8 v9, v1, 0x1e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    int-to-char v1, v9

    .line 372
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 280
    .end local v1    # "h":C
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "odd":Z
    :pswitch_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 281
    const/16 v9, 0x20

    if-ne v0, v9, :cond_1

    .line 282
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_1
    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 288
    const/4 v7, 0x1

    .line 289
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 291
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 292
    const/4 v7, 0x2

    .line 293
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 296
    :cond_4
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :pswitch_1
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 304
    const/16 v9, 0x20

    if-ne v0, v9, :cond_5

    .line 305
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 307
    :cond_5
    add-int/lit8 v9, v0, -0x61

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 310
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 311
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 315
    :cond_7
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 316
    const/4 v7, 0x2

    .line 317
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 320
    :cond_8
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 327
    :pswitch_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 328
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 330
    :cond_9
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 331
    const/4 v7, 0x0

    .line 332
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 334
    :cond_a
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 335
    const/4 v7, 0x1

    .line 336
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 339
    :cond_b
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    if-ge v9, p2, :cond_c

    .line 340
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 341
    .local v5, "next":C
    invoke-static {v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 342
    const/4 v7, 0x3

    .line 343
    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 347
    .end local v5    # "next":C
    :cond_c
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 356
    :cond_d
    const/4 v7, 0x0

    .line 357
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 369
    .restart local v1    # "h":C
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 374
    .restart local v6    # "odd":Z
    :cond_f
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    goto/16 :goto_4

    .line 377
    .end local v6    # "odd":Z
    :cond_10
    rem-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_11

    .line 378
    mul-int/lit8 v9, v1, 0x1e

    add-int/lit8 v9, v9, 0x1d

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    :cond_11
    return v7

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "eci"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v1, 0xc5f94

    .line 601
    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 602
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :goto_0
    return-void

    .line 604
    :cond_0
    if-ge p0, v1, :cond_1

    .line 605
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 608
    :cond_1
    const v0, 0xc6318

    if-ge p0, v0, :cond_2

    .line 609
    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    sub-int v0, v1, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 612
    :cond_2
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 470
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 466
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 462
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMixed(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 474
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPunctuation(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 478
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 482
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 243
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING_NAMES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, "encodingName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 250
    .end local v0    # "encodingName":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 251
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No support for any encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING_NAMES:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    return-object v2

    .line 246
    .restart local v0    # "encodingName":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
