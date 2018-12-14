.class Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->a(Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f()V

    return-void
.end method
