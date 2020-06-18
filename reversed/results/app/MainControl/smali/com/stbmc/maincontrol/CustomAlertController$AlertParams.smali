.class public Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;
.super Ljava/lang/Object;
.source "CustomAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stbmc/maincontrol/CustomAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIconId:I

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 941
    iput v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 949
    iput-boolean v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 965
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 966
    iput-boolean v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCancelable:Z

    .line 967
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 968
    return-void
.end method

.method private createListView(Lcom/stbmc/maincontrol/CustomAlertController;)V
    .locals 10
    .param p1, "dialog"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1028
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    const/4 v7, 0x0

    .line 1029
    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;

    .line 1032
    .local v6, "listView":Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 1033
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 1034
    new-instance v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    const v3, 0x7f030010

    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$1;-><init>(Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;)V

    .line 1087
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1094
    :cond_0
    invoke-static {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->access$802(Lcom/stbmc/maincontrol/CustomAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1095
    iget v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/stbmc/maincontrol/CustomAlertController;->access$902(Lcom/stbmc/maincontrol/CustomAlertController;I)I

    .line 1097
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1098
    new-instance v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;-><init>(Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;Lcom/stbmc/maincontrol/CustomAlertController;)V

    invoke-virtual {v6, v1}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1121
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 1122
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1125
    :cond_2
    iget-boolean v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1126
    invoke-virtual {v6, v9}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->setChoiceMode(I)V

    .line 1130
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1131
    invoke-static {p1, v6}, Lcom/stbmc/maincontrol/CustomAlertController;->access$1002(Lcom/stbmc/maincontrol/CustomAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1132
    return-void

    .line 1049
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;-><init>(Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/stbmc/maincontrol/CustomAlertController$RecycleListView;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1076
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    const v2, 0x7f030011

    .line 1078
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 1079
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1076
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    const v2, 0x7f03000f

    goto :goto_3

    .line 1079
    .restart local v2    # "layout":I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 1082
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1107
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 1108
    new-instance v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;-><init>(Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;Lcom/stbmc/maincontrol/CustomAlertController;)V

    invoke-virtual {v6, v1}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1127
    :cond_a
    iget-boolean v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1128
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/stbmc/maincontrol/CustomAlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    const/4 v3, 0x0

    .line 971
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 972
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 984
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 988
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/stbmc/maincontrol/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 992
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/stbmc/maincontrol/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 995
    :cond_3
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 996
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/stbmc/maincontrol/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 999
    :cond_4
    iget-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 1000
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setInverseBackgroundForced(Z)V

    .line 1005
    :cond_5
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 1006
    :cond_6
    invoke-direct {p0, p1}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->createListView(Lcom/stbmc/maincontrol/CustomAlertController;)V

    .line 1009
    :cond_7
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1010
    iget-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 1011
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/stbmc/maincontrol/CustomAlertController;->setView(Landroid/view/View;IIII)V

    .line 1025
    :cond_8
    :goto_1
    return-void

    .line 974
    :cond_9
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 975
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 977
    :cond_a
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 978
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 980
    :cond_b
    iget v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 981
    iget v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setIcon(I)V

    goto :goto_0

    .line 1014
    :cond_c
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
