.class Landroid/support/v4/b/z;
.super Landroid/support/v4/b/af;


# instance fields
.field final synthetic a:Landroid/support/v4/b/x;


# direct methods
.method constructor <init>(Landroid/support/v4/b/x;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/b/z;->a:Landroid/support/v4/b/x;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/b/af;-><init>(Landroid/support/v4/b/y;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/z;->a:Landroid/support/v4/b/x;

    invoke-static {v0}, Landroid/support/v4/b/x;->a(Landroid/support/v4/b/x;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroid/support/v4/b/z;->a:Landroid/support/v4/b/x;

    iget-object v1, p0, Landroid/support/v4/b/z;->a:Landroid/support/v4/b/x;

    iget-object v2, p0, Landroid/support/v4/b/z;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/support/v4/b/x;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/b/x;->a(Landroid/support/v4/b/x;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
