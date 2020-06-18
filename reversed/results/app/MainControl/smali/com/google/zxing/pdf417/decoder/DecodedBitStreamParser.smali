.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;,
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 66
    const/16 v2, 0x19

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 77
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 78
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 79
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 80
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 81
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 82
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void

    .line 61
    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    .line 66
    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .locals 17
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "codeIndex"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 418
    const/16 v13, 0x385

    move/from16 v0, p0

    if-ne v0, v13, :cond_5

    .line 421
    const/4 v4, 0x0

    .line 422
    .local v4, "count":I
    const-wide/16 v11, 0x0

    .line 423
    .local v11, "value":J
    const/4 v13, 0x6

    new-array v6, v13, [C

    .line 424
    .local v6, "decodedData":[C
    const/4 v13, 0x6

    new-array v1, v13, [I

    .line 425
    .local v1, "byteCompactedCodewords":[I
    const/4 v7, 0x0

    .line 426
    .local v7, "end":Z
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "codeIndex":I
    .local v3, "codeIndex":I
    aget v10, p1, p2

    .local v10, "nextCode":I
    move/from16 p2, v3

    .line 427
    .end local v3    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    :goto_0
    const/4 v13, 0x0

    aget v13, p1, v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_3

    if-nez v7, :cond_3

    .line 428
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .local v5, "count":I
    aput v10, v1, v4

    .line 430
    const-wide/16 v13, 0x384

    mul-long/2addr v13, v11

    int-to-long v15, v10

    add-long v11, v13, v15

    .line 431
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v10, p1, p2

    .line 433
    const/16 v13, 0x384

    if-eq v10, v13, :cond_0

    const/16 v13, 0x385

    if-eq v10, v13, :cond_0

    const/16 v13, 0x386

    if-eq v10, v13, :cond_0

    const/16 v13, 0x39c

    if-eq v10, v13, :cond_0

    const/16 v13, 0x3a0

    if-eq v10, v13, :cond_0

    const/16 v13, 0x39b

    if-eq v10, v13, :cond_0

    const/16 v13, 0x39a

    if-ne v10, v13, :cond_1

    .line 440
    :cond_0
    add-int/lit8 p2, v3, -0x1

    .line 441
    .end local v3    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    const/4 v7, 0x1

    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    goto :goto_0

    .line 443
    .end local v4    # "count":I
    .end local p2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    .restart local v5    # "count":I
    :cond_1
    rem-int/lit8 v13, v5, 0x5

    if-nez v13, :cond_c

    if-lez v5, :cond_c

    .line 446
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    const/4 v13, 0x6

    if-ge v9, v13, :cond_2

    .line 447
    rsub-int/lit8 v13, v9, 0x5

    const-wide/16 v14, 0x100

    rem-long v14, v11, v14

    long-to-int v14, v14

    int-to-char v14, v14

    aput-char v14, v6, v13

    .line 448
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    .line 446
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 450
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 451
    const/4 v4, 0x0

    .end local v5    # "count":I
    .restart local v4    # "count":I
    move/from16 p2, v3

    .end local v3    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto :goto_0

    .line 457
    .end local v9    # "j":I
    :cond_3
    const/4 v13, 0x0

    aget v13, p1, v13

    move/from16 v0, p2

    if-ne v0, v13, :cond_4

    const/16 v13, 0x384

    if-ge v10, v13, :cond_4

    .line 458
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    aput v10, v1, v4

    move v4, v5

    .line 464
    .end local v5    # "count":I
    .restart local v4    # "count":I
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_a

    .line 465
    aget v13, v1, v8

    int-to-char v13, v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 468
    .end local v1    # "byteCompactedCodewords":[I
    .end local v4    # "count":I
    .end local v6    # "decodedData":[C
    .end local v7    # "end":Z
    .end local v8    # "i":I
    .end local v10    # "nextCode":I
    .end local v11    # "value":J
    :cond_5
    const/16 v13, 0x39c

    move/from16 v0, p0

    if-ne v0, v13, :cond_a

    .line 471
    const/4 v4, 0x0

    .line 472
    .restart local v4    # "count":I
    const-wide/16 v11, 0x0

    .line 473
    .restart local v11    # "value":J
    const/4 v7, 0x0

    .line 474
    .restart local v7    # "end":Z
    :cond_6
    :goto_3
    const/4 v13, 0x0

    aget v13, p1, v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_a

    if-nez v7, :cond_a

    .line 475
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v2, p1, p2

    .line 476
    .local v2, "code":I
    const/16 v13, 0x384

    if-ge v2, v13, :cond_7

    .line 477
    add-int/lit8 v4, v4, 0x1

    .line 479
    const-wide/16 v13, 0x384

    mul-long/2addr v13, v11

    int-to-long v15, v2

    add-long v11, v13, v15

    move/from16 p2, v3

    .line 492
    .end local v3    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    :goto_4
    rem-int/lit8 v13, v4, 0x5

    if-nez v13, :cond_6

    if-lez v4, :cond_6

    .line 495
    const/4 v13, 0x6

    new-array v6, v13, [C

    .line 496
    .restart local v6    # "decodedData":[C
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_5
    const/4 v13, 0x6

    if-ge v9, v13, :cond_9

    .line 497
    rsub-int/lit8 v13, v9, 0x5

    const-wide/16 v14, 0xff

    and-long/2addr v14, v11

    long-to-int v14, v14

    int-to-char v14, v14

    aput-char v14, v6, v13

    .line 498
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    .line 496
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 481
    .end local v6    # "decodedData":[C
    .end local v9    # "j":I
    .end local p2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :cond_7
    const/16 v13, 0x384

    if-eq v2, v13, :cond_8

    const/16 v13, 0x385

    if-eq v2, v13, :cond_8

    const/16 v13, 0x386

    if-eq v2, v13, :cond_8

    const/16 v13, 0x39c

    if-eq v2, v13, :cond_8

    const/16 v13, 0x3a0

    if-eq v2, v13, :cond_8

    const/16 v13, 0x39b

    if-eq v2, v13, :cond_8

    const/16 v13, 0x39a

    if-ne v2, v13, :cond_b

    .line 488
    :cond_8
    add-int/lit8 p2, v3, -0x1

    .line 489
    .end local v3    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    const/4 v7, 0x1

    goto :goto_4

    .line 500
    .restart local v6    # "decodedData":[C
    .restart local v9    # "j":I
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 501
    const/4 v4, 0x0

    goto :goto_3

    .line 505
    .end local v2    # "code":I
    .end local v4    # "count":I
    .end local v6    # "decodedData":[C
    .end local v7    # "end":Z
    .end local v9    # "j":I
    .end local v11    # "value":J
    :cond_a
    return p2

    .end local p2    # "codeIndex":I
    .restart local v2    # "code":I
    .restart local v3    # "codeIndex":I
    .restart local v4    # "count":I
    .restart local v7    # "end":Z
    .restart local v11    # "value":J
    :cond_b
    move/from16 p2, v3

    .end local v3    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto :goto_4

    .end local v2    # "code":I
    .end local v4    # "count":I
    .end local p2    # "codeIndex":I
    .restart local v1    # "byteCompactedCodewords":[I
    .restart local v3    # "codeIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "decodedData":[C
    .restart local v10    # "nextCode":I
    :cond_c
    move v4, v5

    .end local v5    # "count":I
    .restart local v4    # "count":I
    move/from16 p2, v3

    .end local v3    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    goto/16 :goto_0
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 95
    .local v1, "codeIndex":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v0, p0, v1

    .line 96
    .local v0, "code":I
    new-instance v5, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .local v5, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    move v1, v2

    .line 97
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :goto_0
    const/4 v6, 0x0

    aget v6, p0, v6

    if-ge v1, v6, :cond_1

    .line 98
    sparse-switch v0, :sswitch_data_0

    .line 121
    add-int/lit8 v1, v1, -0x1

    .line 122
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 125
    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 126
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v0, p0, v1

    move v1, v2

    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 100
    :sswitch_0
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 101
    goto :goto_1

    .line 105
    :sswitch_1
    invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 106
    goto :goto_1

    .line 108
    :sswitch_2
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 109
    goto :goto_1

    .line 111
    :sswitch_3
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    .line 112
    goto :goto_1

    .line 116
    :sswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 128
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 131
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 132
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 134
    :cond_2
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v6, v7, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 135
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 136
    return-object v3

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_1
        0x39a -> :sswitch_4
        0x39b -> :sswitch_4
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_3
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 600
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 601
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 602
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    .line 606
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 608
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 141
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-le v9, v10, :cond_0

    .line 143
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 145
    :cond_0
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 146
    .local v8, "segmentIndexArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    .line 147
    aget v9, p0, p1

    aput v9, v8, v7

    .line 146
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v6, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 156
    aget v9, p0, p1

    const/16 v10, 0x39b

    if-ne v9, v10, :cond_5

    .line 157
    add-int/lit8 p1, p1, 0x1

    .line 158
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    .line 159
    .local v0, "additionalOptionCodeWords":[I
    const/4 v1, 0x0

    .line 161
    .local v1, "additionalOptionCodeWordsIndex":I
    const/4 v5, 0x0

    .line 162
    .local v5, "end":Z
    :goto_1
    const/4 v9, 0x0

    aget v9, p0, v9

    if-ge p1, v9, :cond_3

    if-nez v5, :cond_3

    .line 163
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v3, p0, p1

    .line 164
    .local v3, "code":I
    const/16 v9, 0x384

    if-ge v3, v9, :cond_2

    .line 165
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "additionalOptionCodeWordsIndex":I
    .local v2, "additionalOptionCodeWordsIndex":I
    aput v3, v0, v1

    move v1, v2

    .end local v2    # "additionalOptionCodeWordsIndex":I
    .restart local v1    # "additionalOptionCodeWordsIndex":I
    move p1, v4

    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1

    .line 167
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 174
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 169
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 170
    add-int/lit8 p1, v4, 0x1

    .line 171
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v5, 0x1

    .line 172
    goto :goto_1

    .line 179
    .end local v3    # "code":I
    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 185
    .end local v0    # "additionalOptionCodeWords":[I
    .end local v1    # "additionalOptionCodeWordsIndex":I
    .end local v5    # "end":Z
    :cond_4
    :goto_2
    return p1

    .line 180
    :cond_5
    aget v9, p0, p1

    const/16 v10, 0x39a

    if-ne v9, v10, :cond_4

    .line 181
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 182
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v11, 0x1b

    const/16 v10, 0x391

    const/16 v9, 0x384

    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 270
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 271
    .local v3, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 272
    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 273
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1d

    .line 274
    aget v4, p0, v1

    .line 275
    .local v4, "subModeCh":I
    const/4 v0, 0x0

    .line 276
    .local v0, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 398
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 403
    goto :goto_0

    .line 279
    :pswitch_0
    if-ge v4, v7, :cond_2

    .line 281
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto :goto_1

    .line 283
    :cond_2
    if-ne v4, v7, :cond_3

    .line 284
    const/16 v0, 0x20

    goto :goto_1

    .line 285
    :cond_3
    if-ne v4, v11, :cond_4

    .line 286
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 287
    :cond_4
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_5

    .line 288
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 289
    :cond_5
    if-ne v4, v8, :cond_6

    .line 291
    move-object v2, v3

    .line 292
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 293
    :cond_6
    if-ne v4, v10, :cond_7

    .line 294
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_7
    if-ne v4, v9, :cond_0

    .line 296
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 303
    :pswitch_1
    if-ge v4, v7, :cond_8

    .line 304
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    goto :goto_1

    .line 306
    :cond_8
    if-ne v4, v7, :cond_9

    .line 307
    const/16 v0, 0x20

    goto :goto_1

    .line 308
    :cond_9
    if-ne v4, v11, :cond_a

    .line 310
    move-object v2, v3

    .line 311
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 312
    :cond_a
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_b

    .line 313
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 314
    :cond_b
    if-ne v4, v8, :cond_c

    .line 316
    move-object v2, v3

    .line 317
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 318
    :cond_c
    if-ne v4, v10, :cond_d

    .line 319
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    :cond_d
    if-ne v4, v9, :cond_0

    .line 321
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 328
    :pswitch_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_e

    .line 329
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 331
    :cond_e
    const/16 v5, 0x19

    if-ne v4, v5, :cond_f

    .line 332
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 333
    :cond_f
    if-ne v4, v7, :cond_10

    .line 334
    const/16 v0, 0x20

    goto :goto_1

    .line 335
    :cond_10
    if-ne v4, v11, :cond_11

    .line 336
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 337
    :cond_11
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_12

    .line 338
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 339
    :cond_12
    if-ne v4, v8, :cond_13

    .line 341
    move-object v2, v3

    .line 342
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 343
    :cond_13
    if-ne v4, v10, :cond_14

    .line 344
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 345
    :cond_14
    if-ne v4, v9, :cond_0

    .line 346
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 353
    :pswitch_3
    if-ge v4, v8, :cond_15

    .line 354
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    .line 356
    :cond_15
    if-ne v4, v8, :cond_16

    .line 357
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 358
    :cond_16
    if-ne v4, v10, :cond_17

    .line 359
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 360
    :cond_17
    if-ne v4, v9, :cond_0

    .line 361
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 368
    :pswitch_4
    move-object v3, v2

    .line 369
    if-ge v4, v7, :cond_18

    .line 370
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto/16 :goto_1

    .line 372
    :cond_18
    if-ne v4, v7, :cond_19

    .line 373
    const/16 v0, 0x20

    goto/16 :goto_1

    .line 374
    :cond_19
    if-ne v4, v9, :cond_0

    .line 375
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 382
    :pswitch_5
    move-object v3, v2

    .line 383
    if-ge v4, v8, :cond_1a

    .line 384
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    .line 386
    :cond_1a
    if-ne v4, v8, :cond_1b

    .line 387
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 388
    :cond_1b
    if-ne v4, v10, :cond_1c

    .line 391
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 392
    :cond_1c
    if-ne v4, v9, :cond_0

    .line 393
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 404
    .end local v0    # "ch":C
    .end local v4    # "subModeCh":I
    :cond_1d
    return-void

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x384

    const/4 v7, 0x0

    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "count":I
    const/4 v3, 0x0

    .line 520
    .local v3, "end":Z
    const/16 v6, 0xf

    new-array v4, v6, [I

    .line 522
    .local v4, "numericCodewords":[I
    :cond_0
    :goto_0
    aget v6, p0, v7

    if-ge p1, v6, :cond_5

    if-nez v3, :cond_5

    .line 523
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v0, p0, p1

    .line 524
    .local v0, "code":I
    aget v6, p0, v7

    if-ne v1, v6, :cond_1

    .line 525
    const/4 v3, 0x1

    .line 527
    :cond_1
    if-ge v0, v8, :cond_3

    .line 528
    aput v0, v4, v2

    .line 529
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 541
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :goto_1
    rem-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_2

    const/16 v6, 0x386

    if-eq v0, v6, :cond_2

    if-eqz v3, :cond_0

    .line 548
    :cond_2
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const/4 v2, 0x0

    goto :goto_0

    .line 531
    .end local v5    # "s":Ljava/lang/String;
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_3
    if-eq v0, v8, :cond_4

    const/16 v6, 0x385

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39c

    if-eq v0, v6, :cond_4

    const/16 v6, 0x3a0

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39b

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39a

    if-ne v0, v6, :cond_6

    .line 537
    :cond_4
    add-int/lit8 p1, v1, -0x1

    .line 538
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_1

    .line 553
    .end local v0    # "code":I
    :cond_5
    return p1

    .end local p1    # "codeIndex":I
    .restart local v0    # "code":I
    .restart local v1    # "codeIndex":I
    :cond_6
    move p1, v1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 200
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [I

    .line 202
    .local v6, "textCompactionData":[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v0, v7, [I

    .line 204
    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 205
    .local v4, "index":I
    const/4 v3, 0x0

    .line 206
    .local v3, "end":Z
    :goto_0
    aget v7, p0, v9

    if-ge p1, v7, :cond_1

    if-nez v3, :cond_1

    .line 207
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v1, p0, p1

    .line 208
    .local v1, "code":I
    if-ge v1, v10, :cond_0

    .line 209
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    .line 210
    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 211
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 213
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_0
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 216
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v10, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move p1, v2

    .line 217
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 224
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 225
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 226
    goto :goto_0

    .line 234
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_2
    const/16 v7, 0x391

    aput v7, v6, v4

    .line 235
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 236
    aput v1, v0, v4

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "code":I
    :cond_1
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 243
    return p1

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
