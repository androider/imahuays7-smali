.class public interface abstract Lcom/jess/arms/http/b;
.super Ljava/lang/Object;
.source "GlobalHttpHandler.java"


# static fields
.field public static final a:Lcom/jess/arms/http/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/jess/arms/http/b$1;

    invoke-direct {v0}, Lcom/jess/arms/http/b$1;-><init>()V

    sput-object v0, Lcom/jess/arms/http/b;->a:Lcom/jess/arms/http/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Request;
.end method

.method public abstract a(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Response;)Lokhttp3/Response;
.end method
