.class Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "CustomAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->createListView(Lcom/stbmc/maincontrol/CustomAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

.field final synthetic val$listView:Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/stbmc/maincontrol/CustomAlertController$RecycleListView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p5, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->val$listView:Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1054
    invoke-virtual {p0}, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1055
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->mLabelIndex:I

    .line 1056
    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1057
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 1061
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1062
    .local v0, "text":Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->val$listView:Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1064
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 1063
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1065
    return-void

    .line 1064
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$2;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
