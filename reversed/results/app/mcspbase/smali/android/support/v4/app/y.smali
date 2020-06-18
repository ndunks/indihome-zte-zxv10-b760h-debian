.class Landroid/support/v4/app/y;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v4/app/x;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/x;

    iget-boolean v0, v0, Landroid/support/v4/app/x;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->a()V

    iget-object v0, p0, Landroid/support/v4/app/y;->a:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->e:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->i()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
