.class Lcom/mh/movie/core/mvp/ui/widget/LabelsView$1;
.super Ljava/lang/Object;
.source "LabelsView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setLabels(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/LabelsView;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 391
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$1;->a(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 394
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
