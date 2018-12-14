.class public Lcom/taobao/accs/a/a$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/taobao/accs/a/a$a;->b:I

    return-void
.end method
