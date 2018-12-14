.class Lcom/mh/movie/core/mvp/ui/activity/RuleActivity$1;
.super Ljava/lang/Object;
.source "RuleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/RuleActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/RuleActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;->finish()V

    return-void
.end method
