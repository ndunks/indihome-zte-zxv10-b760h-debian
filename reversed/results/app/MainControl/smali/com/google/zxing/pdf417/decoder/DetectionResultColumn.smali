.class Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.super Ljava/lang/Object;
.source "DetectionResultColumn.java"


# static fields
.field private static final MAX_NEARBY_DISTANCE:I = 0x5


# instance fields
.field private final boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 2
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    invoke-direct {v0, p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 33
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/Codeword;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 34
    return-void
.end method


# virtual methods
.method final getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method final getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 2
    .param p1, "imageRow"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method final getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 4
    .param p1, "imageRow"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 38
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 57
    :goto_0
    return-object v3

    .line 41
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v3

    sub-int v2, v3, v1

    .line 43
    .local v2, "nearImageRow":I
    if-ltz v2, :cond_1

    .line 44
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v0, v3, v2

    .line 45
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v3

    add-int v2, v3, v1

    .line 50
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 51
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v0, v3, v2

    .line 52
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 53
    goto :goto_0

    .line 41
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    .end local v2    # "nearImageRow":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    return-object v0
.end method

.method final imageRowToCodewordIndex(I)I
    .locals 1
    .param p1, "imageRow"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method final setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V
    .locals 2
    .param p1, "imageRow"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    aput-object p2, v0, v1

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 82
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 83
    .local v2, "formatter":Ljava/util/Formatter;
    const/4 v6, 0x0

    .line 84
    .local v6, "row":I
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    .local v0, "arr$":[Lcom/google/zxing/pdf417/decoder/Codeword;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v7, v6

    .end local v6    # "row":I
    .local v7, "row":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 85
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v1, :cond_0

    .line 86
    const-string v8, "%3d:    |   %n"

    new-array v9, v13, [Ljava/lang/Object;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "row":I
    .restart local v6    # "row":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 84
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6    # "row":I
    .restart local v7    # "row":I
    goto :goto_0

    .line 89
    :cond_0
    const-string v8, "%3d: %3d|%3d%n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "row":I
    .restart local v6    # "row":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_1

    .line 91
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "row":I
    .restart local v7    # "row":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 93
    return-object v5
.end method
