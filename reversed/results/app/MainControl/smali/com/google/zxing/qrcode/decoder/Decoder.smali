.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
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
    .line 184
    array-length v3, p1

    .line 186
    .local v3, "numCodewords":I
    new-array v0, v3, [I

    .line 187
    .local v0, "codewordsInts":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 188
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    array-length v5, p1

    sub-int v4, v5, p2

    .line 192
    .local v4, "numECCodewords":I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 199
    aget v5, v0, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 201
    .end local v2    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    return-void
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 17
    .param p1, "parser"    # Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v15

    .line 146
    .local v15, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v6

    .line 149
    .local v6, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v3

    .line 151
    .local v3, "codewords":[B
    invoke-static {v3, v15, v6}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v5

    .line 154
    .local v5, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v14, 0x0

    .line 155
    .local v14, "totalBytes":I
    move-object v1, v5

    .local v1, "arr$":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v1, v8

    .line 156
    .local v4, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v16

    add-int v14, v14, v16

    .line 155
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 158
    .end local v4    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_0
    new-array v11, v14, [B

    .line 159
    .local v11, "resultBytes":[B
    const/4 v12, 0x0

    .line 162
    .local v12, "resultOffset":I
    move-object v1, v5

    array-length v9, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v4, v1, v8

    .line 163
    .restart local v4    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v2

    .line 164
    .local v2, "codewordBytes":[B
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v10

    .line 165
    .local v10, "numDataCodewords":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 166
    const/4 v7, 0x0

    .local v7, "i":I
    move v13, v12

    .end local v12    # "resultOffset":I
    .local v13, "resultOffset":I
    :goto_2
    if-ge v7, v10, :cond_1

    .line 167
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "resultOffset":I
    .restart local v12    # "resultOffset":I
    aget-byte v16, v2, v7

    aput-byte v16, v11, v13

    .line 166
    add-int/lit8 v7, v7, 0x1

    move v13, v12

    .end local v12    # "resultOffset":I
    .restart local v13    # "resultOffset":I
    goto :goto_2

    .line 162
    :cond_1
    add-int/lit8 v8, v8, 0x1

    move v12, v13

    .end local v13    # "resultOffset":I
    .restart local v12    # "resultOffset":I
    goto :goto_1

    .line 172
    .end local v2    # "codewordBytes":[B
    .end local v4    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v7    # "i":I
    .end local v10    # "numDataCodewords":I
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v11, v15, v6, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v16

    return-object v16
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v3, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v3, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 90
    .local v3, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    const/4 v2, 0x0

    .line 91
    .local v2, "fe":Lcom/google/zxing/FormatException;
    const/4 v0, 0x0

    .line 93
    .local v0, "ce":Lcom/google/zxing/ChecksumException;
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 128
    :goto_0
    return-object v4

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lcom/google/zxing/FormatException;
    move-object v2, v1

    .line 103
    .end local v1    # "e":Lcom/google/zxing/FormatException;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    .line 106
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    .line 109
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 112
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 121
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    .line 123
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    .line 126
    .local v4, "result":Lcom/google/zxing/common/DecoderResult;
    new-instance v5, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    .end local v4    # "result":Lcom/google/zxing/common/DecoderResult;
    :catch_1
    move-exception v1

    .line 132
    .local v1, "e":Lcom/google/zxing/ReaderException;
    if-eqz v2, :cond_0

    .line 133
    throw v2

    .line 96
    .end local v1    # "e":Lcom/google/zxing/ReaderException;
    :catch_2
    move-exception v1

    .line 97
    .local v1, "e":Lcom/google/zxing/ChecksumException;
    move-object v0, v1

    goto :goto_1

    .line 135
    .local v1, "e":Lcom/google/zxing/ReaderException;
    :cond_0
    if-eqz v0, :cond_1

    .line 136
    throw v0

    .line 138
    :cond_1
    throw v1
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    array-length v1, p1

    .line 61
    .local v1, "dimension":I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 62
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 63
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 64
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 63
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "j":I
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    return-object v4
.end method
