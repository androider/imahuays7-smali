.class Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$2;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 90
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$2;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$2;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->e:Ljava/lang/String;

    return-void
.end method
