.class public final Lcom/flurry/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/h$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/h;

.field public static final b:Lcom/flurry/sdk/h;


# instance fields
.field c:Ljava/lang/String;

.field d:Lcom/flurry/sdk/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/flurry/sdk/h;

    sget-object v1, Lcom/flurry/sdk/h$a;->a:Lcom/flurry/sdk/h$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/h;->a:Lcom/flurry/sdk/h;

    .line 10
    new-instance v0, Lcom/flurry/sdk/h;

    sget-object v1, Lcom/flurry/sdk/h$a;->b:Lcom/flurry/sdk/h$a;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/h;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/h$a;

    .line 17
    iput-object p2, p0, Lcom/flurry/sdk/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/h$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/h$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
