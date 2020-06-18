.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private correctErrors([BI)V
    .locals 6
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 117
    array-length v3, p1

    .line 119
    .local v3, "numCodewords":I
    new-array v0, v3, [I

    .line 120
    .local v0, "codewordsInts":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 121
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    array-length v5, p1

    sub-int v4, v5, p2

    .line 125
    .local v4, "numECCodewords":I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 132
    aget v5, v0, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 134
    .end local v2    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 19
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v13, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 76
    .local v13, "parser":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v16

    .line 79
    .local v16, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v3

    .line 81
    .local v3, "codewords":[B
    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v5

    .line 83
    .local v5, "dataBlocks":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    array-length v6, v5

    .line 86
    .local v6, "dataBlocksCount":I
    const/4 v15, 0x0

    .line 87
    .local v15, "totalBytes":I
    move-object v1, v5

    .local v1, "arr$":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v7, v1, v9

    .line 88
    .local v7, "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v17

    add-int v15, v15, v17

    .line 87
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 90
    .end local v7    # "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    :cond_0
    new-array v14, v15, [B

    .line 93
    .local v14, "resultBytes":[B
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v6, :cond_2

    .line 94
    aget-object v4, v5, v10

    .line 95
    .local v4, "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v2

    .line 96
    .local v2, "codewordBytes":[B
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v12

    .line 97
    .local v12, "numDataCodewords":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 98
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v12, :cond_1

    .line 100
    mul-int v17, v8, v6

    add-int v17, v17, v10

    aget-byte v18, v2, v8

    aput-byte v18, v14, v17

    .line 98
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 93
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "codewordBytes":[B
    .end local v4    # "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .end local v8    # "i":I
    .end local v12    # "numDataCodewords":I
    :cond_2
    invoke-static {v14}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v17

    return-object v17
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 51
    array-length v1, p1

    .line 52
    .local v1, "dimension":I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 53
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 54
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 55
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 54
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "j":I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    return-object v4
.end method
