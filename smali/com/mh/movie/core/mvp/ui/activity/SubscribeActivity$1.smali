.class Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity$1;
.super Ljava/lang/Object;
.source "SubscribeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
