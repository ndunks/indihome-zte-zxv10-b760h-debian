.class Landroid/support/v4/app/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/bo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bm;)Landroid/app/Notification;
    .locals 10

    iget-object v0, p1, Landroid/support/v4/app/bm;->a:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/bm;->r:Landroid/app/Notification;

    iget-object v2, p1, Landroid/support/v4/app/bm;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bm;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bm;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/bm;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Landroid/support/v4/app/bm;->i:I

    iget-object v7, p1, Landroid/support/v4/app/bm;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Landroid/support/v4/app/bm;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/bm;->g:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Landroid/support/v4/app/bu;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
