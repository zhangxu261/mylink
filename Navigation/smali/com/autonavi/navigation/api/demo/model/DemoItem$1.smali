.class final Lcom/autonavi/navigation/api/demo/model/DemoItem$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/navigation/api/internal/NativeParcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/demo/model/DemoItem;
    .locals 6

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoItem;

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/autonavi/navigation/api/internal/NativeParcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/navigation/api/demo/model/DemoItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/demo/model/DemoItem;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/demo/model/DemoItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/autonavi/navigation/api/internal/NativeParcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoItem$1;->a(Lcom/autonavi/navigation/api/internal/NativeParcel;)Lcom/autonavi/navigation/api/demo/model/DemoItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoItem$1;->a(I)[Lcom/autonavi/navigation/api/demo/model/DemoItem;

    move-result-object v0

    return-object v0
.end method
