.class public Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "CustomAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CustomAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 895
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 896
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 899
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 900
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 903
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 904
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
