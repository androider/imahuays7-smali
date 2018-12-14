.class public Lcom/umeng/message/b/h$c;
.super Ljava/lang/Object;
.source "MsgLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field final synthetic d:Lcom/umeng/message/b/h;


# direct methods
.method public constructor <init>(Lcom/umeng/message/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/umeng/message/b/h$c;->d:Lcom/umeng/message/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Lcom/umeng/message/b/h$c;->a:Ljava/lang/String;

    .line 659
    iput-object p3, p0, Lcom/umeng/message/b/h$c;->b:Ljava/lang/String;

    .line 660
    iput-object p4, p0, Lcom/umeng/message/b/h$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    .line 671
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "MsgId"

    .line 672
    iget-object v2, p0, Lcom/umeng/message/b/h$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TaskId"

    .line 673
    iget-object v2, p0, Lcom/umeng/message/b/h$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MsgStatus"

    .line 674
    iget-object v2, p0, Lcom/umeng/message/b/h$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
