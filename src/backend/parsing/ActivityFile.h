// Interface for File Types

#include <vector>

class ActivityFile{
public:
    virtual std::vector<std::pair<double, double>> getLatLngs() const = 0;  // Pure virtual function
    virtual ~ActivityFile() {}  // Virtual destructor
};