.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final readers:[Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 44
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 46
    .local v0, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    if-eqz v0, :cond_2

    .line 48
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 49
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    :goto_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/zxing/oned/UPCEANReader;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/zxing/oned/UPCEANReader;

    iput-object v2, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    .line 67
    return-void

    .line 44
    .end local v0    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v1    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    :cond_4
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v0, v2

    goto :goto_0

    .line 50
    .restart local v0    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .restart local v1    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    :cond_5
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v2, Lcom/google/zxing/oned/UPCAReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v13

    .line 75
    .local v13, "startGuardPattern":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    .local v3, "arr$":[Lcom/google/zxing/oned/UPCEANReader;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v10, v3, v6

    .line 78
    .local v10, "reader":Lcom/google/zxing/oned/UPCEANReader;
    :try_start_0
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v13, v2}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 94
    .local v11, "result":Lcom/google/zxing/Result;
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v14

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v14, v15, :cond_1

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_1

    const/4 v5, 0x1

    .line 98
    .local v5, "ean13MayBeUPCA":Z
    :goto_1
    if-nez p3, :cond_2

    const/4 v9, 0x0

    .line 100
    .local v9, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :goto_2
    if-eqz v9, :cond_0

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v9, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_0
    const/4 v4, 0x1

    .line 102
    .local v4, "canReturnUPCA":Z
    :goto_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 104
    new-instance v12, Lcom/google/zxing/Result;

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v15

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v16

    sget-object v17, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v14, v15, v0, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 108
    .local v12, "resultUPCA":Lcom/google/zxing/Result;
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 111
    .end local v12    # "resultUPCA":Lcom/google/zxing/Result;
    :goto_4
    return-object v12

    .line 79
    .end local v4    # "canReturnUPCA":Z
    .end local v5    # "ean13MayBeUPCA":Z
    .end local v9    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v11    # "result":Lcom/google/zxing/Result;
    :catch_0
    move-exception v7

    .line 75
    .local v7, "ignored":Lcom/google/zxing/ReaderException;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 94
    .end local v7    # "ignored":Lcom/google/zxing/ReaderException;
    .restart local v11    # "result":Lcom/google/zxing/Result;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 98
    .restart local v5    # "ean13MayBeUPCA":Z
    :cond_2
    sget-object v14, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    move-object v9, v14

    goto :goto_2

    .line 100
    .restart local v9    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .restart local v4    # "canReturnUPCA":Z
    :cond_4
    move-object v12, v11

    .line 111
    goto :goto_4

    .line 114
    .end local v4    # "canReturnUPCA":Z
    .end local v5    # "ean13MayBeUPCA":Z
    .end local v9    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v10    # "reader":Lcom/google/zxing/oned/UPCEANReader;
    .end local v11    # "result":Lcom/google/zxing/Result;
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    .local v0, "arr$":[Lcom/google/zxing/oned/UPCEANReader;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 120
    .local v3, "reader":Lcom/google/zxing/Reader;
    invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v3    # "reader":Lcom/google/zxing/Reader;
    :cond_0
    return-void
.end method
