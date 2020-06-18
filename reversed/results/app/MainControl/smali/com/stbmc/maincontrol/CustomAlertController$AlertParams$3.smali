.class Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;Lcom/stbmc/maincontrol/CustomAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iput-object p2, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;->val$dialog:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-object v0, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;->val$dialog:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-static {v1}, Lcom/stbmc/maincontrol/CustomAlertController;->access$600(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1102
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;->this$0:Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/stbmc/maincontrol/CustomAlertController$AlertParams$3;->val$dialog:Lcom/stbmc/maincontrol/CustomAlertController;

    invoke-static {v0}, Lcom/stbmc/maincontrol/CustomAlertController;->access$600(Lcom/stbmc/maincontrol/CustomAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1105
    :cond_0
    return-void
.end method
