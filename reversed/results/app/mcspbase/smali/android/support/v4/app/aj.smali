.class Landroid/support/v4/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/ag;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ag;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/aj;->c:Landroid/support/v4/app/ag;

    iput-object p2, p0, Landroid/support/v4/app/aj;->a:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/aj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/aj;->c:Landroid/support/v4/app/ag;

    iget-object v1, p0, Landroid/support/v4/app/aj;->c:Landroid/support/v4/app/ag;

    iget-object v1, v1, Landroid/support/v4/app/ag;->u:Landroid/support/v4/app/x;

    iget-object v1, v1, Landroid/support/v4/app/x;->d:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/app/aj;->a:Ljava/lang/String;

    const/4 v3, -0x1

    iget v4, p0, Landroid/support/v4/app/aj;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/ag;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
