.class Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;
.super Ljava/lang/Object;
.source "AddressDialog.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/mvp/ui/widget/WheelView$a<",
        "Lcom/mh/movie/core/mvp/model/entity/AddressEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/AddressEntity;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 65
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;->a(Lcom/mh/movie/core/mvp/model/entity/AddressEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/mh/movie/core/mvp/model/entity/AddressEntity;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->getCity()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->d:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->getCity()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->e:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;->a(ILcom/mh/movie/core/mvp/model/entity/AddressEntity;)V

    return-void
.end method
