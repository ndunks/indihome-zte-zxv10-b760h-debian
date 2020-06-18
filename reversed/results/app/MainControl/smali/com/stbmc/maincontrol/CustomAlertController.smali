.class public Lcom/stbmc/maincontrol/CustomAlertController;
.super Ljava/lang/Object;
.source "CustomAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;,
        Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;,
        Lcom/stbmc/maincontrol/CustomAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final MATCH_PARENT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CustomBuilderDialog"

.field public static mAlertContentViewId:I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field protected mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f030002

    sput v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAlertContentViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingSpecified:Z

    .line 106
    iput v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconId:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    .line 128
    new-instance v0, Lcom/stbmc/maincontrol/CustomAlertController$1;

    invoke-direct {v0, p0}, Lcom/stbmc/maincontrol/CustomAlertController$1;-><init>(Lcom/stbmc/maincontrol/CustomAlertController;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 175
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 177
    iput-object p3, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    .line 178
    new-instance v0, Lcom/stbmc/maincontrol/CustomAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/stbmc/maincontrol/CustomAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mHandler:Landroid/os/Handler;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/stbmc/maincontrol/CustomAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/stbmc/maincontrol/CustomAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/stbmc/maincontrol/CustomAlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/stbmc/maincontrol/CustomAlertController;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    :goto_0
    return v2

    .line 186
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 187
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 190
    check-cast v1, Landroid/view/ViewGroup;

    .line 191
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 192
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 193
    add-int/lit8 v0, v0, -0x1

    .line 194
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 195
    invoke-static {p0}, Lcom/stbmc/maincontrol/CustomAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 200
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 609
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 610
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 611
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 612
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    iget-object v3, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 614
    .local v0, "leftSpacer":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v3, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 616
    .local v2, "rightSpacer":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 617
    return-void
.end method

.method private choseDialogDrawable(II)I
    .locals 2
    .param p1, "iOperator"    # I
    .param p2, "iMarket"    # I

    .prologue
    .line 620
    const v0, 0x7f020030

    .line 621
    .local v0, "back_drawable":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 v1, 0x33

    if-ne p2, v1, :cond_1

    .line 622
    const v0, 0x7f020003

    .line 627
    :cond_0
    :goto_0
    return v0

    .line 623
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x2c

    if-ne p2, v1, :cond_0

    .line 624
    const v0, 0x7f020011

    goto :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;ZLandroid/content/res/TypedArray;Z)V
    .locals 22
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p2, "hasButtons"    # Z
    .param p3, "axxd"    # Landroid/content/res/TypedArray;
    .param p4, "hasTitle"    # Z

    .prologue
    .line 757
    const-string v19, "CustomBuilderDialog"

    const-string v20, "CustomAlertController ==> setBackground"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const v9, 0x7f020030

    .line 761
    .local v9, "fullDark":I
    const v16, 0x7f020033

    .line 762
    .local v16, "topDark":I
    const v7, 0x7f02002d

    .line 763
    .local v7, "centerDark":I
    const v4, 0x7f020029

    .line 764
    .local v4, "bottomDark":I
    const v8, 0x7f02002f

    .line 766
    .local v8, "fullBright":I
    const v15, 0x7f020032

    .line 767
    .local v15, "topBright":I
    const v6, 0x7f02002c

    .line 768
    .local v6, "centerBright":I
    const v3, 0x7f020028

    .line 769
    .local v3, "bottomBright":I
    const v5, 0x7f02002a

    .line 771
    .local v5, "bottomMedium":I
    const-string v19, "config.MarketCode"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "51"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "config.OperatorsCode"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "2"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 773
    const/16 v19, 0x2

    const/16 v20, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/stbmc/maincontrol/CustomAlertController;->choseDialogDrawable(II)I

    move-result v9

    .line 776
    :cond_0
    const-string v19, "sys.zte.AndroidTV"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "AndroidTV"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 777
    const/high16 v9, 0x7f020000

    .line 779
    :cond_1
    const-string v19, "config.MarketCode"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "44"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "config.OperatorsCode"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 780
    const/16 v19, 0x1

    const/16 v20, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/stbmc/maincontrol/CustomAlertController;->choseDialogDrawable(II)I

    move-result v9

    .line 791
    :cond_2
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 792
    .local v18, "views":[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 793
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 794
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 796
    .local v10, "lastLight":Z
    const/4 v13, 0x0

    .line 809
    .local v13, "pos":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 p1, 0x0

    .end local p1    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_3
    aput-object p1, v18, v13

    .line 811
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 812
    add-int/lit8 v13, v13, 0x1

    .line 824
    const/4 v14, 0x0

    .line 825
    .local v14, "setView":Z
    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_9

    .line 826
    aget-object v17, v18, v13

    .line 827
    .local v17, "v":Landroid/view/View;
    if-nez v17, :cond_4

    .line 825
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 830
    :cond_4
    if-eqz v11, :cond_5

    .line 831
    if-nez v14, :cond_7

    .line 832
    if-eqz v10, :cond_6

    move/from16 v19, v15

    :goto_2
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 836
    :goto_3
    const/4 v14, 0x1

    .line 838
    :cond_5
    move-object/from16 v11, v17

    .line 839
    aget-boolean v10, v12, v13

    goto :goto_1

    :cond_6
    move/from16 v19, v16

    .line 832
    goto :goto_2

    .line 834
    :cond_7
    if-eqz v10, :cond_8

    move/from16 v19, v6

    :goto_4
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_8
    move/from16 v19, v7

    goto :goto_4

    .line 842
    .end local v17    # "v":Landroid/view/View;
    :cond_9
    if-eqz v11, :cond_a

    .line 843
    if-eqz v14, :cond_e

    .line 848
    if-eqz v10, :cond_d

    if-eqz p2, :cond_c

    .end local v5    # "bottomMedium":I
    :goto_5
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 881
    .end local v9    # "fullDark":I
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 888
    :cond_b
    return-void

    .restart local v5    # "bottomMedium":I
    .restart local v9    # "fullDark":I
    :cond_c
    move v5, v3

    .line 848
    goto :goto_5

    :cond_d
    move v5, v4

    goto :goto_5

    .line 851
    :cond_e
    if-eqz v10, :cond_f

    .end local v9    # "fullDark":I
    :goto_7
    invoke-virtual {v11, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v9    # "fullDark":I
    :cond_f
    move v9, v8

    goto :goto_7
.end method

.method private setTvBackground(Landroid/widget/LinearLayout;Z)V
    .locals 21
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p2, "hasButtons"    # Z

    .prologue
    .line 633
    const-string v18, "CustomBuilderDialog"

    const-string v19, "CustomAlertController ==> setBackground"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const v8, 0x7f020030

    .line 637
    .local v8, "fullDark":I
    const v15, 0x7f020033

    .line 638
    .local v15, "topDark":I
    const v6, 0x7f02002d

    .line 639
    .local v6, "centerDark":I
    const v3, 0x7f020029

    .line 640
    .local v3, "bottomDark":I
    const v7, 0x7f02002f

    .line 642
    .local v7, "fullBright":I
    const v14, 0x7f020032

    .line 643
    .local v14, "topBright":I
    const v5, 0x7f02002c

    .line 644
    .local v5, "centerBright":I
    const v2, 0x7f020028

    .line 645
    .local v2, "bottomBright":I
    const v4, 0x7f02002a

    .line 647
    .local v4, "bottomMedium":I
    const-string v18, "sys.zte.AndroidTV"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "AndroidTV"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 648
    const v8, 0x7f020001

    .line 649
    const-string v18, "sys.zte.androidtv_1306"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1306"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 650
    const-string v18, "sys.zte.androidtv_1306"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/high16 v8, 0x7f020000

    .line 664
    :cond_0
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v17, v0

    .line 665
    .local v17, "views":[Landroid/view/View;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v11, v0, [Z

    .line 666
    .local v11, "light":[Z
    const/4 v10, 0x0

    .line 667
    .local v10, "lastView":Landroid/view/View;
    const/4 v9, 0x0

    .line 669
    .local v9, "lastLight":Z
    const/4 v12, 0x0

    .line 682
    .local v12, "pos":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 p1, 0x0

    .end local p1    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_1
    aput-object p1, v17, v12

    .line 684
    const/16 v18, 0x1

    aput-boolean v18, v11, v12

    .line 685
    add-int/lit8 v12, v12, 0x1

    .line 687
    const/4 v13, 0x0

    .line 688
    .local v13, "setView":Z
    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 689
    aget-object v16, v17, v12

    .line 690
    .local v16, "v":Landroid/view/View;
    if-nez v16, :cond_2

    .line 688
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 693
    :cond_2
    if-eqz v10, :cond_3

    .line 694
    if-nez v13, :cond_5

    .line 695
    if-eqz v9, :cond_4

    move/from16 v18, v14

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 699
    :goto_3
    const/4 v13, 0x1

    .line 701
    :cond_3
    move-object/from16 v10, v16

    .line 702
    aget-boolean v9, v11, v12

    goto :goto_1

    :cond_4
    move/from16 v18, v15

    .line 695
    goto :goto_2

    .line 697
    :cond_5
    if-eqz v9, :cond_6

    move/from16 v18, v5

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_6
    move/from16 v18, v6

    goto :goto_4

    .line 705
    .end local v16    # "v":Landroid/view/View;
    :cond_7
    if-eqz v10, :cond_8

    .line 706
    if-eqz v13, :cond_c

    .line 711
    if-eqz v9, :cond_b

    if-eqz p2, :cond_a

    .end local v4    # "bottomMedium":I
    :goto_5
    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 744
    .end local v8    # "fullDark":I
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 746
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stbmc/maincontrol/CustomAlertController;->mCheckedItem:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSelection(I)V

    .line 751
    :cond_9
    return-void

    .restart local v4    # "bottomMedium":I
    .restart local v8    # "fullDark":I
    :cond_a
    move v4, v2

    .line 711
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_5

    .line 714
    :cond_c
    if-eqz v9, :cond_d

    .end local v8    # "fullDark":I
    :goto_7
    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v8    # "fullDark":I
    :cond_d
    move v8, v7

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 10

    .prologue
    const v9, 0x7f07000c

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 537
    const-string v4, "CustomBuilderDialog"

    const-string v7, "CustomAlertController ==> setupButtons"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v2, 0x1

    .line 539
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 540
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 541
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 542
    .local v3, "whichButtons":I
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f07000b

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 543
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 554
    :goto_0
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f07000d

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 555
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 558
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    :goto_1
    const-string v4, "config.MarketCode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "44"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "config.OperatorsCode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 566
    const-string v4, "sys.zte.AndroidTV"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "AndroidTV"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 567
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 568
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 571
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    :cond_0
    :goto_2
    if-ne v3, v2, :cond_7

    .line 598
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/stbmc/maincontrol/CustomAlertController;->centerButton(Landroid/widget/Button;)V

    .line 605
    :cond_1
    :goto_3
    if-eqz v3, :cond_9

    move v4, v5

    :goto_4
    return v4

    .line 548
    :cond_2
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 550
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    or-int/2addr v3, v2

    goto/16 :goto_0

    .line 560
    :cond_3
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    or-int/2addr v3, v0

    goto :goto_1

    .line 573
    :cond_4
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    or-int/2addr v3, v1

    goto :goto_2

    .line 580
    :cond_5
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 581
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 584
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 586
    :cond_6
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    or-int/2addr v3, v1

    goto :goto_2

    .line 599
    :cond_7
    if-ne v3, v0, :cond_8

    .line 600
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/stbmc/maincontrol/CustomAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 601
    :cond_8
    if-ne v3, v1, :cond_1

    .line 602
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/stbmc/maincontrol/CustomAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_9
    move v4, v6

    .line 605
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v5, 0x7f070006

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 509
    const-string v0, "CustomBuilderDialog"

    const-string v1, "CustomAlertController ==> setupContent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 511
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 514
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    .line 515
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 527
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v6, 0x7f070002

    const/16 v9, 0x8

    .line 453
    const/4 v1, 0x1

    .line 454
    .local v1, "hasTitle":Z
    const-string v4, "CustomBuilderDialog"

    const-string v5, "CustomAlertController ==> setupTitle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 457
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 460
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 464
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 505
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 466
    :cond_1
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 468
    .local v0, "hasTextTitle":Z
    :goto_1
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f070003

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    .line 469
    if-eqz v0, :cond_5

    .line 472
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f070004

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    .line 474
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 482
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 466
    .end local v0    # "hasTextTitle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 483
    .restart local v0    # "hasTextTitle":Z
    :cond_3
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 484
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 485
    :cond_4
    iget v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 490
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    .line 491
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    .line 492
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    .line 493
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    .line 490
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 494
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 499
    :cond_5
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 500
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupTvView()V
    .locals 9

    .prologue
    const v8, 0x7f070008

    const/4 v7, -0x1

    .line 369
    const-string v5, "CustomBuilderDialog"

    const-string v6, "CustomAlertController ==> setupTvView"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 371
    .local v0, "contentPanel":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 372
    invoke-direct {p0}, Lcom/stbmc/maincontrol/CustomAlertController;->setupButtons()Z

    move-result v3

    .line 373
    .local v3, "hasButtons":Z
    invoke-direct {p0, v0}, Lcom/stbmc/maincontrol/CustomAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v4

    .line 376
    .local v4, "hasTitle":Z
    const/4 v2, 0x0

    .line 378
    .local v2, "customPanel":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 379
    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 380
    .restart local v2    # "customPanel":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f070009

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 381
    .local v1, "custom":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-boolean v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingSpecified:Z

    if-eqz v5, :cond_0

    .line 383
    iget v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingLeft:I

    iget v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingTop:I

    iget v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingRight:I

    iget v8, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 386
    :cond_0
    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_1

    .line 387
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 399
    .end local v1    # "custom":Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/stbmc/maincontrol/CustomAlertController;->setTvBackground(Landroid/widget/LinearLayout;Z)V

    .line 401
    return-void

    .line 390
    :cond_2
    iget-object v5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupView()V
    .locals 10

    .prologue
    const v9, 0x7f070008

    const/4 v8, -0x1

    .line 403
    const-string v6, "CustomBuilderDialog"

    const-string v7, "CustomAlertController ==> setupView"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f070001

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 405
    .local v1, "contentPanel":Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lcom/stbmc/maincontrol/CustomAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 406
    invoke-direct {p0}, Lcom/stbmc/maincontrol/CustomAlertController;->setupButtons()Z

    move-result v4

    .line 411
    .local v4, "hasButtons":Z
    const/4 v0, 0x0

    .line 413
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/stbmc/maincontrol/CustomAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v5

    .line 422
    .local v5, "hasTitle":Z
    const/4 v3, 0x0

    .line 424
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 425
    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 426
    .restart local v3    # "customPanel":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f070009

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 427
    .local v2, "custom":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-boolean v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingSpecified:Z

    if-eqz v6, :cond_0

    .line 429
    iget v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingLeft:I

    iget v7, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingTop:I

    iget v8, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingRight:I

    iget v9, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 432
    :cond_0
    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_1

    .line 433
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 443
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 448
    :cond_2
    invoke-direct {p0, v1, v4, v0, v5}, Lcom/stbmc/maincontrol/CustomAlertController;->setBackground(Landroid/widget/LinearLayout;ZLandroid/content/res/TypedArray;Z)V

    .line 450
    return-void

    .line 436
    :cond_3
    iget-object v6, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 356
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 205
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 208
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 212
    :cond_1
    const-string v0, "sys.zte.AndroidTV"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidTV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    const-string v0, "sys.zte.androidtv_1306"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1306"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const-string v0, "sys.zte.androidtv_1306"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/high16 v0, 0x7f030000

    sput v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAlertContentViewId:I

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/stbmc/maincontrol/CustomAlertController;->mAlertContentViewId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 221
    invoke-direct {p0}, Lcom/stbmc/maincontrol/CustomAlertController;->setupTvView()V

    .line 231
    :goto_1
    return-void

    .line 217
    :cond_2
    const v0, 0x7f030001

    sput v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAlertContentViewId:I

    goto :goto_0

    .line 222
    :cond_3
    const-string v0, "config.MarketCode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "44"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "config.OperatorsCode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    const v0, 0x7f030004

    sput v0, Lcom/stbmc/maincontrol/CustomAlertController;->mAlertContentViewId:I

    .line 225
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/stbmc/maincontrol/CustomAlertController;->mAlertContentViewId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 226
    invoke-direct {p0}, Lcom/stbmc/maincontrol/CustomAlertController;->setupView()V

    goto :goto_1

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/stbmc/maincontrol/CustomAlertController;->mAlertContentViewId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 229
    invoke-direct {p0}, Lcom/stbmc/maincontrol/CustomAlertController;->setupView()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 291
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 294
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :pswitch_0
    iput-object p2, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 298
    iput-object p4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 314
    :goto_0
    return-void

    .line 302
    :pswitch_1
    iput-object p2, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 303
    iput-object p4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 307
    :pswitch_2
    iput-object p2, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 308
    iput-object p4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mCustomTitleView:Landroid/view/View;

    .line 245
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconId:I

    .line 323
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 324
    if-lez p1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-nez p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mForceInverseBackground:Z

    .line 341
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 235
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingSpecified:Z

    .line 260
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 267
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mView:Landroid/view/View;

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingSpecified:Z

    .line 269
    iput p2, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingLeft:I

    .line 270
    iput p3, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingTop:I

    .line 271
    iput p4, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingRight:I

    .line 272
    iput p5, p0, Lcom/stbmc/maincontrol/CustomAlertController;->mViewSpacingBottom:I

    .line 273
    return-void
.end method
