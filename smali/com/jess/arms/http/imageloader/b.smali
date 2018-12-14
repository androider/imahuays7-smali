.class public Lcom/jess/arms/http/imageloader/b;
.super Ljava/lang/Object;
.source "ImageConfig.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/widget/ImageView;

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/widget/ImageView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/jess/arms/http/imageloader/b;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/jess/arms/http/imageloader/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/jess/arms/http/imageloader/b;->d:I

    return v0
.end method
