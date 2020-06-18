.class Lcom/ztestb/basecomp/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ztestb/basecomp/BaseComponentService;


# direct methods
.method constructor <init>(Lcom/ztestb/basecomp/BaseComponentService;)V
    .locals 0

    iput-object p1, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    iget-object v1, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-virtual {v1}, Lcom/ztestb/basecomp/BaseComponentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ztestb/basecomp/BaseComponentService;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    iget-object v1, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-virtual {v1}, Lcom/ztestb/basecomp/BaseComponentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ztestb/basecomp/BaseComponentService;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    iget-object v1, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-virtual {v1}, Lcom/ztestb/basecomp/BaseComponentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ztestb/basecomp/BaseComponentService;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    iget-object v1, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-virtual {v1}, Lcom/ztestb/basecomp/BaseComponentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ztestb/basecomp/BaseComponentService;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    iget-object v1, p0, Lcom/ztestb/basecomp/b;->a:Lcom/ztestb/basecomp/BaseComponentService;

    invoke-virtual {v1}, Lcom/ztestb/basecomp/BaseComponentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ztestb/basecomp/BaseComponentService;->e(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
