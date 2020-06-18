.class Landroid/support/v4/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/g/e;


# instance fields
.field final synthetic a:Landroid/support/v4/g/b;


# direct methods
.method constructor <init>(Landroid/support/v4/g/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/g/c;->a:Landroid/support/v4/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/g/c;->a:Landroid/support/v4/g/b;

    iget-object v0, v0, Landroid/support/v4/g/b;->b:Landroid/support/v4/g/k;

    invoke-virtual {v0}, Landroid/support/v4/g/k;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/c;->a:Landroid/support/v4/g/b;

    iget-object v0, v0, Landroid/support/v4/g/b;->b:Landroid/support/v4/g/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/k;->a(I)V

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/c;->a:Landroid/support/v4/g/b;

    iget-object v0, v0, Landroid/support/v4/g/b;->b:Landroid/support/v4/g/k;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/k;->a(J)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/c;->a:Landroid/support/v4/g/b;

    iget-object v0, v0, Landroid/support/v4/g/b;->t:Landroid/view/KeyEvent$Callback;

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    return-void
.end method
