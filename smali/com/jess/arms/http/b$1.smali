.class final Lcom/jess/arms/http/b$1;
.super Ljava/lang/Object;
.source "GlobalHttpHandler.java"

# interfaces
.implements Lcom/jess/arms/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0

    return-object p2
.end method

.method public a(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0

    return-object p3
.end method
