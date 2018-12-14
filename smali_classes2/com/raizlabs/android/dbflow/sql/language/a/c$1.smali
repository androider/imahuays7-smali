.class Lcom/raizlabs/android/dbflow/sql/language/a/c$1;
.super Ljava/lang/Object;
.source "TypeConvertedProperty.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/sql/language/a/c;->b()Lcom/raizlabs/android/dbflow/sql/language/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/sql/language/a/c;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/a/c;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c$1;->a:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/a/h;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c$1;->a:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a(Lcom/raizlabs/android/dbflow/sql/language/a/c;)Lcom/raizlabs/android/dbflow/sql/language/a/c$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c$a;->getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;

    move-result-object p1

    return-object p1
.end method
