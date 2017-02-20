#include <pthread.h>
#include <semaphore.h>

struct loopermessage;
class looper{
public:
  looper();
  ~looper();

  void post(int what, void *data, bool flush = false);
  void quit();

  virtual void handle(int what, void *data);

private:
  void addmsg(loopermessage *msg, bool flush);
  static void
}
