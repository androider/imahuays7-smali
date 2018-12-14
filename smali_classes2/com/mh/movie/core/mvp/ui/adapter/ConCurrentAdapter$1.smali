.class Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;
.super Ljava/lang/Object;
.source "ConCurrentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;ILcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;->a:I

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;->b:Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;->a:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->b(I)V

    .line 75
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;->b:Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->getNum()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setDownloadNumber(I)V

    .line 76
    new-instance p1, Lcom/google/gson/e;

    invoke-direct {p1}, Lcom/google/gson/e;-><init>()V

    .line 77
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {p1, v0}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->r:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 79
    sput-boolean p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->e:Z

    return-void
.end method
