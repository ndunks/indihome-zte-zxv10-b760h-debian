.class Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "CustomAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->createListView(Lcom/stbmc/maincontrol/CustomAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/stbmc/maincontrol/CustomAlertController;

.field final synthetic val$listView:Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;Lcom/stbmc/maincontrol/CustomAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->val$listView:Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;

    iput-object p3, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->val$dialog:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->val$listView:Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->val$dialog:Lcom/stbmc/maincontrol/CustomAlertController;

    .line 1115
    invoke-static {v1}, Lcom/stbmc/maincontrol/CustomAlertController;->access$600(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$4;->val$listView:Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/stbmc/maincontrol/CustomAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 1114
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1116
    return-void
.end method
